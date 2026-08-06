# Disaster Recovery Runbooks

## Backup Runbook

RB-NetworkBackup-PerResource

Purpose:
Exports Azure network resources to JSON files and stores them in Azure Blob Storage.

## Restore Runbook

RB-NetworkRestore-VNet-Test

Purpose:
Restores a deleted Azure Virtual Network from backup.

Restores:

- VNet
- Subnet
- NSG Association
- Route Table Association
- Tags

## Test Status

Validated Successfully

Date:
2026-08-06