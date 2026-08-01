# Azure Automation Plan

## Goal

Run Azure Network backups automatically every month.

## Components

- Azure Automation Account
- Hybrid Runbook Worker
- Backup-All.ps1
- Azure Storage Account

## Process

Schedule
↓
Runbook
↓
Backup-All.ps1
↓
Backup Files
↓
Azure Storage