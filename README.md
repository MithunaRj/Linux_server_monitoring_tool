# Linux Server Monitoring Tool

## Project Overview

The Linux Server Monitoring Tool is a Bash scripting project developed to monitor basic system resources in a Linux environment.  
This project helps track CPU usage, memory usage, disk usage, and high resource-consuming processes while generating monitoring logs automatically.

The main purpose of this project is to simulate a real-world Linux administration and DevOps monitoring scenario using Bash scripting and Git version control.

---

## Features

- CPU usage monitoring
- Memory usage monitoring
- Disk usage monitoring
- High resource usage alerts
- Process consumption tracking
- Automated log generation
- Function-based reusable Bash scripting
- Git branching workflow implementation

---

## Technologies Used

- Linux
- Bash Scripting
- Git
- GitHub

---

## Project Structure

```text
linux_monitoring_project/
│
├── scripts/
│   └── monitor.sh
│
├── logs/
│   ├── .gitkeep
│   └── Server_monitoring_tool.log
│
├── docs/
│
├── README.md
│
└── .gitignore

How To Run The Project:

Step 1 — Clone Repository
git clone <repository_url>

Step 2 — Navigate To Project Directory
cd linux_monitoring_project

Step 3 — Provide Execute Permission
chmod +x scripts/monitor.sh

Step 4 — Run Script
./scripts/monitor.sh

Sample Output

------ NEW MONITORING REPORT -------
====== SERVER MONITORING TOOL =====
CPU Usage is 12%
Memory Usage is 43%
Disk Usage is 61%
High_cpu_consumption is from root 72%
High_memory_consumption is from mysql 31%


Git Workflow Used
This project follows a feature-based Git workflow:
main → dev → feature branch

Workflow followed:

Feature branch development
Local commits
Merge into dev branch
Merge into main branch
Push to remote GitHub repository

Real-World Use Case
This project can be used for:

Basic Linux server monitoring
Learning Bash scripting automation
Understanding Git workflows
Beginner-level DevOps practice
System resource tracking
Future Improvements
Email alert integration
Cron job scheduling
Multi-server monitoring
JSON formatted logs
Docker container monitoring
Colored terminal output
Learning Outcomes

Through this project, the following concepts were practiced:

Linux system administration basics
Bash scripting fundamentals
Process monitoring
Function-based scripting
Git branching and merging
GitHub remote repository management
Version control workflows


Author
Mithuna Raj
