# TestLimitsLookup.csv File Format

## Overview

This CSV file defines the mapping between **hardware versions** and the **RF test limits** that should be used for each hardware revision.
Each row specifies the test limits file name used for RX/TX checks, calibration, and verification for a specified range of hardware versions.
The hardware version is queried from the device and used to determine which test limits file to use.

---

## File Format

- **Delimiter:** Comma (`,`)
- **Header Row:** Yes
- **Encoding:** UTF-8

---

## Column Definitions

### `HW_VERS`

- **Description:** Hardware version or version range for which the row applies.
- **Data Type:** String (version range expression)
- **Format:**
  - `..2` → all versions up to and including 2
  - `3..` → version 3 and higher
  - `1..3` → versions 1 through 3
- **Examples:** `..2`, `3..`
- **Notes:** Expecting hardware versions 1 to 15.

---

### `Subdirectory`

- **Description:** Name of the subdirectory containing the RF test limits in CSV format.
- **Data Type:** String
- **Example:** `R5G_Production_Test_Limits_Rev A`
- **Notes:** Corresponds to a folder containing CSV files generated from an Excel file of the same name.

## Example Data

```csv
HW_VERS,Subdirectory
1..,R5G_Production_Test_Limits_Rev A
