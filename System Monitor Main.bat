cd /d %~dp0
@call set_path.bat
start "System Monitor" "%~dp0Python\WeActStudioSystemMonitor_w.exe" ".\main.py"