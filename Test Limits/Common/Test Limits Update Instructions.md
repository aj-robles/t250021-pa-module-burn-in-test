# Test Limits Update Instructions

1. Copy the new XLSX test limits file into the `Test Limit Source Files` folder.
2. Double-click the `Convert Test Limit Source Files.bat` batch file to launch the converter.
3. Follow the prompt instructions to select a test limits file to convert.
4. Following a successful conversion, a new directory with the same name as the test limits file will be created. The directory will contain the converted CSV files.
5. Optionally compare the new CSV files with the old CSV files using a diff compare application such as DiffMerge. CSV file names should not change between revisions. Verify formatting of the data and verify that expected changes have been made.
6. Update `TestLimitsLookup.csv` file to assign hardware versions to the new test limits folder. See `TestLimitsLookup.csv File Format.md` for instructions.
