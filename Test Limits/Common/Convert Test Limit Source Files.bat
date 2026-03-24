@echo off
setlocal enabledelayedexpansion

rem --- This script checks if the 'l3-env' Conda environment is already active.
rem --- If it is not, it activates it, then runs the conversion script.

REM Define the path to your Miniforge installation directory
SET MINIFORGE_PATH=%ProgramData%\miniforge3
REM Define the name of the environment you want to use
SET ENV_NAME=l3-env
SET INSTALL_SCRIPT=Scripts\Install Miniforge3 and l3-env.bat

REM ------------------------------------------------------------
REM Check if Miniforge is installed
REM ------------------------------------------------------------
IF NOT EXIST "%MINIFORGE_PATH%\Scripts\activate.bat" (
    echo.
    echo Miniforge is not installed.
    echo.
	echo Please run "%INSTALL_SCRIPT%" to install Miniforge.
	echo.
	pause
	goto :EOF
)

REM ------------------------------------------------------------
REM Activate Conda environment
REM ------------------------------------------------------------
CALL "%MINIFORGE_PATH%\Scripts\activate.bat" %ENV_NAME%

IF ERRORLEVEL 1 (
    echo ERROR: Failed to activate Conda environment "%ENV_NAME%"
    goto :EOF
)

REM ------------------------------------------------------------
REM Run conversion script
python Scripts\test_limits_xlsx_to_csv.py -a

REM Run calibration frequencies script
python Scripts\extract_frequencies.py

endlocal