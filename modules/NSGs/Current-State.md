# Current State - nsg-ladbsproduction

## Resource Group

rg-network

## Purpose

Protects Azure SQL Managed Instance subnet.

Subnet:
10.193.204.0/27

---

## Inbound Rules

### allow_tds_inbound

Priority: 1000

Access: Allow

Source:
VirtualNetwork

Ports:
1433,1434

Purpose:
SQL connectivity

---

### allow_redirect_inbound

Priority: 1100

Access: Allow

Protocol: TCP

Ports:
11000-11999

Purpose:
SQL redirect traffic

---

### allow_geodr_inbound

Priority: 1200

Access: Allow

Protocol: TCP

Ports:
5022

Purpose:
Geo-DR replication

---

### deny_all_inbound

Priority: 4096

Access: Deny

Ports:
All

Purpose:
Block remaining inbound traffic

---

## Outbound Rules

### allow_privatelink_outbound

Priority: 1300

Protocol: TCP

Port:
443

Destination:
VirtualNetwork

Purpose:
Private Endpoint traffic

---

### allow_azurecloud_outbound

Priority: 1400

Protocol: TCP

Port:
443

Destination:
AzureCloud

Purpose:
Azure service connectivity

---

### deny_all_outbound

Priority: 4096

Access: Deny