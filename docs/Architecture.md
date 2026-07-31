# LADBS Azure Network Architecture

## Regions

- West US
- East US
- West US 3

## Core Networking

- Virtual WAN
- Virtual Hubs
- Azure Firewall
- VNets
- Route Tables
- NSGs

## Security

- Azure Firewall
- Bastion
- Private Endpoints
- Private DNS

## Application Delivery

- Front Door
- Application Gateways
- Load Balancers

## Disaster Recovery

- dr-vnet-hub-westus3
- dr-vnet-production-westus3
- dr-vnet-avd-westus3


# LADBS Azure Network Architecture

## Overview

This repository documents and manages the LADBS Azure network infrastructure using Infrastructure as Code (IaC).

## Regions

- West US
- West US 3
- East US

## Network Architecture

### Virtual WAN

Primary connectivity architecture built around Azure Virtual WAN.

### Hub and Spoke

Hub VNets provide:

- Azure Firewall
- Gateway services
- Shared services

Spoke VNets provide:

- Applications
- Identity services
- Workloads

## Security

### Azure Firewall

Regional firewalls protect traffic between:

- Internet
- Azure workloads
- On-premises networks

### Network Security Groups

Subnet-level and workload-level traffic filtering.

### Azure Front Door

Global application delivery and web application protection.

### Application Gateway

Application publishing and Layer 7 load balancing.

## Identity

- Active Directory
- Entra ID
- Azure AD DS
- Domain Controllers

## Disaster Recovery

- West US
- West US 3
- East US