@echo off
echo pip cache purge

cd /d %~dp0
@call set_path.bat

WeActStudioSystemMonitor -m pip cache purge

pause