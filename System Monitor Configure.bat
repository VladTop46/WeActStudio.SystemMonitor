cd /d %~dp0
@call set_path.bat
start "System Monitor Configure" "%~dp0Python\WeActStudioSystemMonitor_w.exe" ".\configure.py"