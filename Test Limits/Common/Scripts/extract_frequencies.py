import argparse
import re
from pathlib import Path

import pandas as pd


NUM_RE = re.compile(r"[-+]?(\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?")


def extract_numeric(value):
    if value is None or (isinstance(value, float) and pd.isna(value)):
        return None
    text = str(value)
    match = NUM_RE.search(text)
    if not match:
        return None
    try:
        return float(match.group(0))
    except ValueError:
        return None


def is_blank_row(row) -> bool:
    return all(pd.isna(cell) or str(cell).strip() == "" for cell in row)


def row_contains_section(row) -> bool:
    for cell in row:
        if "section" in str(cell).lower():
            return True
    return False


def read_ini_section_headers(ini_path: Path):
    headers = []
    for line in ini_path.read_text(encoding="utf-8", errors="replace").splitlines():
        stripped = line.strip()
        if stripped.startswith("[") and stripped.endswith("]"):
            header = stripped[1:-1].strip()
            if header:
                headers.append(header)
    return headers


def find_missing_ini_headers(frequencies, ini_headers):
    numeric_headers = []
    for header in ini_headers:
        num = extract_numeric(header)
        if num is not None:
            numeric_headers.append(num)

    missing = []
    for freq in sorted(set(frequencies)):
        if not any(abs(freq - header_freq) <= 1e-6 for header_freq in numeric_headers):
            missing.append(freq)
    return missing


def collect_frequencies(xlsx_path: Path, trace_values=None, debug=False):
    values = []
    traces = []
    table_count = 0
    section_count = 0
    sheet_table_counts = {}
    xl = pd.ExcelFile(xlsx_path)

    for sheet_name in xl.sheet_names:
        sheet_df = xl.parse(sheet_name, header=None)
        nrows = len(sheet_df)
        sheet_tables = 0

        row_idx = 0
        while row_idx < nrows:
            row = sheet_df.iloc[row_idx]
            if not row_contains_section(row):
                row_idx += 1
                continue

            section_count += 1
            candidate_rows = []
            header_row = row_idx + 1
            while header_row < nrows and is_blank_row(sheet_df.iloc[header_row]):
                header_row += 1
            if header_row < nrows:
                candidate_rows.append(header_row)
            if header_row + 1 < nrows:
                candidate_rows.append(header_row + 1)

            header = None
            freq_cols = []
            chosen_header_row = None
            for cand in candidate_rows:
                cand_header = sheet_df.iloc[cand].tolist()
                cand_freq_cols = [
                    idx
                    for idx, col in enumerate(cand_header)
                    if "frequency" in str(col).lower()
                ]
                if cand_freq_cols:
                    header = cand_header
                    freq_cols = cand_freq_cols
                    chosen_header_row = cand
                    break

            if not freq_cols:
                if debug:
                    tried = ", ".join(str(r + 1) for r in candidate_rows)
                    print(
                        f"[{sheet_name}] Section at row {row_idx + 1}: "
                        f"no frequency columns in header rows {tried}"
                    )
                row_idx += 1
                continue

            data_start = chosen_header_row + 1
            data_end = data_start
            while data_end < nrows and not is_blank_row(sheet_df.iloc[data_end]):
                data_end += 1

            data_block = sheet_df.iloc[data_start:data_end, freq_cols]
            table_count += 1
            sheet_tables += 1
            if debug:
                col_names = [str(header[i]) for i in freq_cols]
                print(
                    f"[{sheet_name}] Table {sheet_tables} "
                    f"(Section row {row_idx + 1}, header row {chosen_header_row + 1}): "
                    f"columns={col_names}, data rows={data_end - data_start}"
                )
            for col_pos, col_idx in enumerate(freq_cols):
                col_name = header[col_idx]
                for offset, cell in enumerate(data_block.iloc[:, col_pos]):
                    num = extract_numeric(cell)
                    if num is not None:
                        values.append(num)
                        if trace_values is not None and num in trace_values:
                            traces.append(
                                {
                                    "file": xlsx_path.name,
                                    "sheet": sheet_name,
                                    "row": data_start + offset + 1,
                                    "column": str(col_name),
                                    "raw": cell,
                                    "parsed": num,
                                }
                            )

            row_idx = data_end + 1

        sheet_table_counts[sheet_name] = sheet_tables

    return values, traces, table_count, section_count, sheet_table_counts


def main():
    parser = argparse.ArgumentParser(
        description="Extract unique frequency values from Excel and output to CSV."
    )
    parser.add_argument(
        "-o",
        "--output",
        default="Calibration_Frequencies.csv",
        help="Path to the output CSV file.",
    )
    parser.add_argument(
        "--trace-values",
        default="",
        help="Comma-separated list of numeric values to trace back to source cells.",
    )
    parser.add_argument(
        "--debug",
        action="store_true",
        help="Print table detection details per sheet.",
    )
    args = parser.parse_args()

    base_dir = Path(
        r"C:\Users\Public\Documents\TDS Data\Rampage 5G PA Module\Test Limits\Test Limit Source Files"
    )
    if not base_dir.exists():
        print("")
        print(f"Error: Input directory not found: {base_dir}")
        return

    xlsx_files = sorted(base_dir.glob("*.xlsx"))
    if not xlsx_files:
        print("")
        print(f"Error: No .xlsx files found in: {base_dir}")
        return

    trace_values = None
    if args.trace_values.strip():
        trace_values = set()
        for part in args.trace_values.split(","):
            part = part.strip()
            if not part:
                continue
            trace_values.add(float(part))

    def format_value(value: float) -> str:
        if isinstance(value, float) and value.is_integer():
            return str(int(value))
        return str(value)

    output_dir = Path(
        r"C:\Users\Public\Documents\TDS Data\Rampage 5G PA Module\Calibration"
    )
    output_dir.mkdir(parents=True, exist_ok=True)

    all_values = []
    all_traces = []
    total_table_count = 0
    total_section_count = 0
    combined_sheet_table_counts = {}

    for xlsx_path in xlsx_files:
        (
            frequencies,
            traces,
            table_count,
            section_count,
            sheet_table_counts,
        ) = collect_frequencies(xlsx_path, trace_values=trace_values, debug=args.debug)

        if not frequencies:
            print("")
            print(
                f"Warning: No frequency values were found in {xlsx_path.name}. "
                "Check the table layout."
            )
            continue

        all_values.extend(frequencies)
        all_traces.extend(traces)
        total_table_count += table_count
        total_section_count += section_count
        for sheet_name, count in sheet_table_counts.items():
            key = f"{xlsx_path.name}::{sheet_name}"
            combined_sheet_table_counts[key] = count

    if not all_values:
        print("")
        print("Error: No frequency values were found in any .xlsx file.")
        return

    output_path = output_dir / args.output
    unique_sorted = sorted(set(all_values))

    calibration_ini_files = sorted(
        output_dir.glob("Calibration_*.ini"),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    calibration_ini_path = calibration_ini_files[0] if calibration_ini_files else None
    if calibration_ini_path is not None:
        ini_headers = read_ini_section_headers(calibration_ini_path)
        missing_frequencies = find_missing_ini_headers(unique_sorted, ini_headers)
        if missing_frequencies:
            print("")
            print(
                "The current calibration is missing frequencies found in the test limits. Please calibrate again."
            )
            print("")
            input("Press Enter to continue...")
            return

    output_path.write_text(
        "\n".join(format_value(value) for value in unique_sorted),
        encoding="utf-8",
    )

    if all_traces:
        trace_path = output_path.with_name(output_path.stem + "_trace.csv")
        pd.DataFrame(all_traces).to_csv(trace_path, index=False)

    print("")
    try:
        rel_output = output_path.resolve().relative_to(output_dir.resolve())
    except ValueError:
        rel_output = output_path.resolve()
    print(f"Created file: {rel_output}")
    if calibration_ini_path is not None:
        print(f"INI header check passed: {calibration_ini_path.name}")
    print(f"Tables processed: {total_table_count}")
    if args.debug:
        print("")
        print(f"Sections found: {total_section_count}")
        for key, count in combined_sheet_table_counts.items():
            print(f"{key}: {count} tables")


if __name__ == "__main__":
    main()
