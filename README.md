# T250021 Rampage 5G PA Module Burn-In

This is the functional test software for the PA Module Burn-In Test.

## Software Requirements

Use the 32-bit versions of TestStand and LabVIEW for the greatest compatability.

- NI LabVIEW 2025 Q3 (32-bit)
- NI TestStand 2025 Q3 (32-bit)

## Getting Started

- Double-click `TestStand Development.cmd` to open `TestStand Workspace.tsw` in the TestStand Sequence Editor.
  - This script opens the Sequence Editor using the local environment configuration in the `Environment` directory instead of the Global environment.
- Double-click `LabVIEW\LabVIEW Project.lvproj` to open the LabVIEW project.
- Configure the process model selection for your application.
- Review Configure-->Result Processing to modify the test report file path.

## Notes

- `TestStand Development.cmd` batch script opens `TestStand Workspace.tsw` in the TestStand Sequence Editor with the local TestStand environment.
- `Environment` directory contains project-specific TestStand directories for `Public`, `CommonAppData` and `LocalAppData`.
- The `Public\Components\TypePalettes` directory contains the `TDS_StepTypes.ini` file defining custom step types for TDS Instrument Framework.
- The `Public\Components\StepTypes\TDS` directory contains the `TDS Step Types.lvlibp` packed project library for TDS Instrument Framework custom step types.
- The `Public\Components\StepTypes\TDS\PPLs` directory contains the `TDS Instruments.lvlibp` packed project library for TDS Instrument Framework custom step types.
- `Sequences` directory for TestStand test sequence files.
- `LabVIEW` directory for LabVIEW project and support files.
- `User Interface` directory with `TestExec.exe` operator interface for deployments.
- Test results are stored to a directory defined in the Station Globals variable called `TestResultsDirectory`.
  - Subdirectories are created based on the Part Number and UUT Serial Number.
  - CSV test reports are stored in the UUT Serial Number directory.
  - XML test reports are stored in a subdirectory called 'XML'.
