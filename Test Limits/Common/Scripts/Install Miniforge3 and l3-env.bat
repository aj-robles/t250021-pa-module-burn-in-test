@echo off
setlocal DisableDelayedExpansion

:: ---- Elevation check (FIRST) ----
net session >nul 2>&1
if errorlevel 1 (
    powershell -NoProfile -ExecutionPolicy Bypass ^
        -WindowStyle Hidden ^
        -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit
)

:: ---- Everything below runs ONLY elevated ----

echo Running as Administrator
echo.

REM ---------------------------------------------------------
REM Paths
REM ---------------------------------------------------------
set INSTALLERS_DIR=%~dp0
set MINIFORGE_PATH=C:\ProgramData\Miniforge3
set ENV_YAML=%~dp0l3-env.yml
set MINIFORGE_INSTALLER=%INSTALLERS_DIR%\Miniforge3-Windows-x86_64.exe
set MINIFORGE_URL=https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Windows-x86_64.exe

REM Track whether installer was downloaded (0 = no, 1 = yes)
set DOWNLOADED_MINIFORGE=0

REM ---------------------------------------------------------
REM 1. Check if Miniforge is already installed
REM ---------------------------------------------------------
if exist "%MINIFORGE_PATH%\Scripts\conda.exe" (
    echo Miniforge is already installed at %MINIFORGE_PATH%. Skipping installation.
) else (
    REM -----------------------------------------------------
    REM 1a. Download Miniforge if the installer is missing
    REM -----------------------------------------------------
    if not exist "%MINIFORGE_INSTALLER%" (
        echo.
		echo Miniforge installer not found in %INSTALLERS_DIR%.

		choice /M "Do you want to download it now?"
		if errorlevel 2 (
			echo Skipping Miniforge download.
			exit /b 0
		)

		echo.
		echo Downloading Miniforge installer...
		powershell -NoProfile -ExecutionPolicy Bypass ^
			-Command "Invoke-WebRequest -Uri '%MINIFORGE_URL%' -OutFile '%MINIFORGE_INSTALLER%'"

		if errorlevel 1 (
			echo.
			echo Failed to download Miniforge installer! Exiting script.
			pause
			exit /b 1
		)
        set DOWNLOADED_MINIFORGE=1
    ) else (
        echo Miniforge installer found in %INSTALLERS_DIR%.
    )

    REM -----------------------------------------------------
    REM 1b. Install Miniforge
    REM -----------------------------------------------------
    echo Installing Miniforge3 for all users...
    "%MINIFORGE_INSTALLER%" /InstallationType=AllUsers /RegisterPython=0 /S
    if ERRORLEVEL 1 (
        echo.
        echo Miniforge installation failed! Exiting script.
        pause
        exit /b 1
    )
)

REM ---------------------------------------------------------
REM Delete installer *only if the script downloaded it*
REM ---------------------------------------------------------
if "%DOWNLOADED_MINIFORGE%"=="1" (
    echo Deleting downloaded Miniforge installer...
    del /f "%MINIFORGE_INSTALLER%"
)

REM ---------------------------------------------------------
REM 2. Add conda to PATH for this session
REM ---------------------------------------------------------
set PATH=%MINIFORGE_PATH%\Scripts;%MINIFORGE_PATH%\Library\bin;%MINIFORGE_PATH%;%PATH%

REM ---------------------------------------------------------
REM 3. Create environment if it does not exist
REM ---------------------------------------------------------
call conda env list | findstr /R /C:"^l3-env"
if %ERRORLEVEL%==0 (
    echo Environment l3-env already exists. Skipping creation.
) else (
    echo Creating l3-env environment from YAML...
    call conda env create --name l3-env --file "%ENV_YAML%"
    if ERRORLEVEL 1 (
        echo.
        echo Failed to create l3-env environment! Exiting script.
        pause
        exit /b 1
    )
)

REM ---------------------------------------------------------
REM 4. Activate the environment
REM ---------------------------------------------------------
echo Activating l3-env...
call "%MINIFORGE_PATH%\Scripts\activate.bat" l3-env
if ERRORLEVEL 1 (
    echo.
    echo Failed to activate l3-env! Exiting script.
    pause
    exit /b 1
)

echo Done! l3-env is ready.
pause
endlocal
