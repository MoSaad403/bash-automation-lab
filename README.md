# Bash Automation Lab

A hands-on Bash scripting project focused on Linux system administration, automation, and command-line operations.

This repository documents my progression from small Bash scripting exercises to a combined system administration and automation tool.

## 📁 Project Structure

```text
bash-automation-lab/
│
├── README.md
│
├── 01-file-scanner/
│   └── file_scanner.sh
│
├── 02-backup-script/
│   └── backup.sh
│
├── 03-permission-auditor/
│   └── permission_auditor.sh
│
├── 04-disk-usage-report/
│   └── disk_usage.sh
│
├── 05-server-health-check/
│   └── server_health.sh
│
├── 06-final-project/
│   └── system_audit.sh
│
└── 07-while-read-project/
    └── file_classifier.sh
```

## 🧩 Projects

### 01 — File Scanner

Scans files and directories and reports basic file information.

Practiced:

- `for` loops
- `if` conditions
- File and directory handling
- `wc`
- Bash parameter expansion

---

### 02 — Backup Script

Creates compressed backups of selected directories using `tar`.

Practiced:

- Variables
- Arrays
- Loops
- `tar`
- File existence checks
- Command substitution

---

### 03 — Permission Auditor

Checks files and reports whether they have executable permissions.

Practiced:

- File permissions
- `-x` file test
- Conditional statements
- Bash scripting

---

### 04 — Disk Usage Report

Displays disk usage information for files and directories.

Practiced:

- `du`
- Pipes
- `cut`
- `sort`
- Command substitution

---

### 05 — Server Health Check

Checks the availability of multiple servers using `ping`.

Practiced:

- Arrays
- Loops
- Network connectivity checks
- Exit status handling

---

### 06 — Final Project — System Audit

Combines the concepts from the previous projects into a single Bash-based system administration tool.

The project includes:

- Directory backups
- Log file analysis
- Executable script detection
- Server health checks
- Bash functions
- Arrays
- Counters
- Command-line options
- Final report generation

### Available Options

```text
-f    Check log files
-b    Create directory backups
-x    Check executable scripts
-s    Check server availability
-r    Display the final report
```

Example:

```bash
./system_audit.sh -s
```

---

### 07 — While/Read File Classifier

Classifies files based on their extensions and generates a summary report.

Practiced:

- `while read`
- `case`
- `find`
- File classification
- Counters
- Process substitution

## 🛠️ Skills Practiced

### Bash

- Variables
- Arrays
- Functions
- `for` loops
- `while` loops
- `if` statements
- `case` statements
- `getopts`
- Command substitution
- File tests
- Exit statuses
- Quoting and file handling

### Linux

- File and directory operations
- Permissions
- Disk usage
- File searching
- Archives and backups
- Basic network health checks
- System administration commands

### Git & GitHub

- Repository initialization
- Staging and commits
- Meaningful commit messages
- Branch management
- Remote repositories
- Git history
- GitHub repository management

## 📈 Learning Progression

The project was built incrementally:

```text
File Scanner
     ↓
Backup Script
     ↓
Permission Auditor
     ↓
Disk Usage Report
     ↓
Server Health Check
     ↓
Final System Audit
     ↓
Command-Line Options
     ↓
Final Report
     ↓
File Handling Improvements
     ↓
Documentation
```

Each stage was committed separately to Git to document the development process and practice Git workflows.

## 🎯 Purpose

The goal of this repository is to demonstrate practical Bash scripting and Linux administration skills through hands-on automation tasks.

It also serves as a practical exercise in using Git and GitHub to manage and document a project throughout its development.

## 🚀 Future Improvements

Possible improvements include:

- Better argument validation
- Configurable backup locations
- Improved error handling
- Logging script output
- More flexible server configuration
- Additional system health checks
- Automated testing
- CI workflow with GitHub Actions
