@echo off
title Local Account Management
setlocal enabledelayedexpansion
:menu
cls
echo ================================
echo Local Account Deployment Menu
echo ================================
echo 1. Create Local User Account
echo 2. exit 
echo ================================
set /p choice=Choose an option (1-2):
if "%choice%"=="1" goto create_user
if "%choice%"=="2" goto end
echo Invalid choice. Please try again.
pause
goto menu
:create_user
start ms-chx:localonly
if errorlevel 1 (
    echo Failed to open Local User.
    pause
    goto menu
)
if errorlevel 0 (
    echo Local User opened successfully.
    pause
)
goto menu
:end
echo Exiting...
timeout /t 2 /nobreak >nul
exit