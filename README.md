# WeAct Studio System Monitor — Linux Fork

This is an unofficial Linux-adapted fork of [WeAct Studio System Monitor](https://github.com/WeActStudio/WeActStudio.SystemMonitor).

The original software is Windows-only per the product page, but the codebase is built on top of [turing-smart-screen-python](https://github.com/mathoudebine/turing-smart-screen-python) which is cross-platform — so Linux support is achievable with a few fixes.

> **Status:** Works on Linux with the patches in this fork. Expect rough edges — this is a work in progress.

## What's fixed compared to upstream

- `configure.py`: COM port detection now shows `/dev/ttyACM*` correctly instead of bare `ttyACM0`
- `configure.py`: All popup dialogs now size and position correctly on Linux (upstream used `winfo_width()` which returns 1x1 before render on Linux)
- `configure.py`: Removed Windows-only `-toolwindow` tkinter attribute that crashed on Linux
- `library/utils.py`: `Save and Run` now correctly launches `main.py` via `sys.executable` instead of looking for `Python/python.exe`
- `library/utils.py`: Removed `shell=True` from all `subprocess.Popen` calls (caused silent launch failures on Linux)
- `library/sensors/sensors_custom.py`: Added AMD GPU metrics (`AmdGpuTemperature`, `AmdGpuLoad`, `AmdGpuPower`) via `rocm-smi` for users with Radeon GPUs

## Known issues / not yet fixed

- CPU temperature may not display depending on your hardware and `lm-sensors` setup
- AMD GPU metrics require `rocm-smi` to be installed and the card to be visible to ROCm
- NVIDIA GPU should work via `GPUtil` / `nvidia-smi` but is untested in this fork
- `pyamdgpuinfo` does not build on Python 3.13+ — use the `rocm-smi` custom sensor instead
- Windows-specific features (autostart via Task Scheduler, system volume widget, dark titlebar) are disabled on Linux without replacement
- Theme paths with backslashes (from Windows) may need manual correction in `config.yaml` and `theme.yaml`
- `configure.py` GUI is functional but some edge cases may still misbehave

## Running on Linux

### Setup

```bash
git clone https://github.com/VladTop46/WeActStudio.SystemMonitor.git
cd WeActStudio.SystemMonitor

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### Configure

```bash
python3 configure.py
```

Select your screen model, COM port (`/dev/ttyACM0` or similar), theme, and hardware monitoring settings. Set **Hardware monitoring** to `Automatic` or `Python` — do not use `LibreHardwareMonitor` (Windows only).

### Run

```bash
python3 main.py
```

---

# WeAct Studio System Monitor

Open source system monitor and photo album software base on Python  
> Modified from https://github.com/mathoudebine/turing-smart-screen-python  

## Support Hardware
* **WeAct Studio Display FS V1(3.5Inch)**  
Resolution: 320 x 480 RGB565  
Communication Mode: USB2.0 FS (CDC)  
Sensor: Humidity + Temperature  
Size: 58.5mm x 87.7mm x 9.0mm  
* **WeAct Studio Display FS V1(0.96Inch)**  
Resolution: 80 x 160 RGB565  
Communication Mode: USB2.0 FS (CDC)  
Sensor: None  
Size: 43mm x 14.5mm  

## Software usage considerations
1. You must manually cancel bootstrap before uninstall software
2. If you want to update the software, backup the res/themes directory manually

## Hardware usage considerations
**Display FS V1(3.5Inch)**  
1. Make sure to separate the Velcro before you begin to paste it  
2. After using Velcro to secure the screen, use slow force if you want to remove it  
3. If the shell is unstable, use the attached cushion to reinforce it  

**Display FS V1(0.96Inch)**  
1. The unused side of the USB interface needs to be pasted with a plastic sheet  

```
/*---------------------------------------
- WeAct Studio Official Link
- taobao: weactstudio.taobao.com
- aliexpress: weactstudio.aliexpress.com
- github: github.com/WeActStudio
- gitee: gitee.com/WeAct-TC
- blog: www.weact-tc.cn
---------------------------------------*/
```