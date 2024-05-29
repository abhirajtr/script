@echo off
REM Check if the script is running with administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrative privileges. Please run it as an administrator.
    pause
    exit /b 1
)

REM Deleting the specified registry key
REG DELETE "HKEY_USERS\S-1-5-21-1361164420-1351195141-2450473905-1001_Classes\WOW6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}" /f

REM Check if the deletion was successful
if %errorLevel% neq 0 (
    echo Failed to delete the registry key.
) else (
    echo Registry key deleted successfully.
)

pause
exit /b 0
