# VNet Recovery Procedure

## Purpose

Restore a deleted Azure Virtual Network from backup.

## Prerequisites

- Backup JSON file exists
- Azure Automation Account available
- Network Contributor permissions assigned
- NSG exists
- Route Table exists

## Recovery Steps

### Step 1
Locate backup JSON file.

Example:

network-config-backups/2026-08/VNets/vnet-test-wus3.json

### Step 2

Verify NSG exists.

Example:

nsg-test-wus3

### Step 3

Verify Route Table exists.

Example:

rt-test-wus3

### Step 4

Open Azure Automation.

### Step 5

Execute:

RB-NetworkRestore-VNet-Test

### Step 6

Monitor runbook output.

### Step 7

Validate recovery.

Check:

- VNet exists
- Address space correct
- Subnet exists
- NSG associated
- Route table associated
- Tags restored

## Validation Result

PASS / FAIL