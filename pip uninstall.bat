@echo off
echo Python Module Uninstall

cd /d %~dp0
@call set_path.bat

:restart
set /p var="python -m pip uninstall "
cls
echo Start Uninstall

WeActStudioSystemMonitor -m pip uninstall %var%

goto restart