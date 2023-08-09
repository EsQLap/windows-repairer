echo off
cls
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
echo Hello, this script will restore your Windows system using built-in utilities "sfc" and "Dism"
:CHKDSKPERMISSION
echo Do you want to check the system disk for errors? (May take from 10 minutes to 1 hour, the computer will restart automatically)
set answer=N
set /P answer="Answer (y/N): "
if not %answer% == y if not %answer% == Y if not %answer% == N if not %answer% == n (
    echo Incorrect input
    echo.
    goto CHKDSKPERMISSION
)
if %answer% == y set answer=Y
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
if %answer% == Y (
    echo Y|chkdsk %SYSTEMDRIVE% /f /r /x
    shutdown /r /t 0
)
