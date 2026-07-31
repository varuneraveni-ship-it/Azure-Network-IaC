# Current State - rt-ladbsproduction

## Resource Group

rg-network

## Purpose

Azure SQL Managed Instance route table.

## Associated Subnet

10.193.204.0/27

## Custom Routes

### SQL Management Endpoints

65.55.188.0/24
207.68.190.32/27
13.106.78.32/27
13.106.174.32/27
13.106.4.96/27

Next Hop:
Internet

Purpose:
SQL Managed Instance management traffic

---

## Microsoft Managed Routes

### Azure Active Directory

Destination:
AzureActiveDirectory

Next Hop:
Internet

### Storage West US

Destination:
Storage.westus

Next Hop:
Internet

### Storage East US

Destination:
Storage.eastus

Next Hop:
Internet

### OneDsCollector

Destination:
OneDsCollector

Next Hop:
Internet

### Azure Cloud West US

Destination:
AzureCloud.westus

Next Hop:
Internet

### Azure Cloud East US

Destination:
AzureCloud.eastus

Next Hop:
Internet

---

## Local Routing

Destination:
10.193.204.0/27

Next Hop:
VnetLocal

Purpose:
Internal subnet communication