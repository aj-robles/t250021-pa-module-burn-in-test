@echo off
setlocal EnableExtensions EnableDelayedExpansion

call :Migrate "Rampage 5G PA Module Burn-In" "C:\Users\Public\Documents\TDS Data\Rampage 5G PA Module Burn-In"

exit

:Migrate

REM ---- Validate input ----
if "%~1"=="" (
    echo Usage: %~nx0 ^<SourceDirectory^> ^<TargetDirectory^>
    exit /b 1
)

set "SOURCE_DIR=%~1"
set "TARGET_DIR=%~2"
set "TEST_RESULTS_DIR=%TARGET_DIR%\Test Results"
set "SCRIPT_DIR=%~dp0%SOURCE_DIR%"
set "SOURCE_TEST_LIMITS=%SCRIPT_DIR%"
set "COMMON_TEST_LIMITS=%~dp0Common"
set "DEST_TEST_LIMITS=%TARGET_DIR%\Test Limits"

if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)

echo.

REM ---- Ensure "Test Results" folder exists ----
if not exist "%TEST_RESULTS_DIR%" (
    echo Moving existing test results to "%TEST_RESULTS_DIR%"

    mkdir "%TEST_RESULTS_DIR%"

	for %%F in ("%TARGET_DIR%\*.*") do (
		move "%%F" "%TEST_RESULTS_DIR%" >nul
	)
	for /D %%D in ("%TARGET_DIR%\*") do (
        if /I not "%%~nxD"=="Test Results" (
            move "%%D" "%TEST_RESULTS_DIR%" >nul
        )
    )
)

REM ---- Copy "Test Limits" directory ----
if not exist "%SOURCE_TEST_LIMITS%" (
    echo ERROR: "%SOURCE_TEST_LIMITS%" directory not found next to script.
    exit /b 1
)

xcopy "%SOURCE_TEST_LIMITS%\*" "%DEST_TEST_LIMITS%\" /E /I /D /Y /R /H >nul

REM ---- Copy "Common" directory ----
if not exist "%COMMON_TEST_LIMITS%" (
    echo ERROR: "%COMMON_TEST_LIMITS%" directory not found next to script.
    exit /b 1
)

echo Copying "Test Limits" to "%DEST_TEST_LIMITS%"
echo.
echo Copy Complete. Please run "Convert Test Limit Source Files.bat".
echo.

xcopy "%COMMON_TEST_LIMITS%\*" "%DEST_TEST_LIMITS%\" /E /I /D /Y /R /H >nul

pause

start "" "%DEST_TEST_LIMITS%"

exit /b

endlocal
