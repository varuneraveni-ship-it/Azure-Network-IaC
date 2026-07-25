# Backup Strategy

## Purpose

Maintain monthly backups of Azure network configurations.

## Backup Storage

Container:
network-config-backups

## Resources Protected

- VNets
- NSGs
- Route Tables
- Private Endpoints
- Private DNS Zones
- VNet Peerings
- Azure Firewalls
- Load Balancers
- Application Gateways
- Virtual WAN
- Virtual Hubs
- Front Door

## Backup Frequency

Monthly

## Retention

12 Months

## Backup Format

JSON

## Future State

- Azure Automation Runbook
- Scheduled Monthly Backups
- Bicep Infrastructure as Code
- GitHub Repository Integration