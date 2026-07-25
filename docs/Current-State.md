# Current State

## Existing Azure Network Backup Project

Resources Currently Backed Up

- VNets
- NSGs
- Route Tables
- Private Endpoints
- Private DNS Zones
- VNet Peerings
- Azure Firewalls
- Load Balancers
- Application Gateways
- Bastion
- Virtual WAN
- Virtual Hubs
- Front Door

## Backup Location

Azure Storage Account

Container:
network-config-backups

## Backup Method

PowerShell exports Azure resource configurations to JSON files and stores them in Azure Blob Storage.