# OSS Audit — VLC Media Player

## Student Details
- Student Name: Aiswarya S
- Roll Number: 24MEI10035
- Course: Open Source Software
- Chosen Software: VLC Media Player

## About This Project
This project is a structured audit of VLC Media Player,
an open-source multimedia application licensed under GPL-2+.

## Scripts

### script1.sh — System Identity Report
Displays system information like a welcome screen including
distro name, kernel version, user, uptime and date.

### script2.sh — FOSS Package Inspector
Checks if VLC is installed and displays its version,
status and a philosophy note using a case statement.

### script3.sh — Disk and Permission Auditor
Loops through important system directories and reports
their permissions and disk usage using a for loop.

### script4.sh — Log File Analyzer
Reads a log file line by line and counts how many times
a keyword appears using a while loop.

### script5.sh — Open Source Manifesto Generator
Asks the user 3 questions and generates a personalized
open source philosophy statement saved to a text file.

## How to Run
```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script4.sh testlog.txt error
bash script5.sh
```

## Dependencies
- Kali Linux / any Debian based Linux
- bash
- VLC: sudo apt install vlc
