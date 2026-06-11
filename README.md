# Linux System Audit Scripts

A collection of Bash scripts for Linux system inspection and auditing,
built during Open Source Software coursework.

## Scripts

| Script | What it does |
|--------|-------------|
| `script1.sh` | System identity report — kernel, distro, uptime, user info |
| `script2.sh` | FOSS package inspector — checks installation status and license info |
| `script3.sh` | Disk and permission auditor — scans key system directories |
| `script4.sh` | Log file analyzer — counts and displays keyword matches in any log file |
| `script5.sh` | Open source manifesto generator — interactive, writes output to a .txt file |

## Usage

```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script4.sh /path/to/logfile keyword
bash script5.sh
```

## Requirements
- Linux (tested on Kali)
- `bash`, `dpkg`, `vlc` (for script2)
