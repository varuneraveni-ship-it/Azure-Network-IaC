# Current State - nsg-ag-dmz

## Resource Group

rg-servers

## Purpose

Protects the Application Gateway subnet.

Associated Subnet:
ApplicationGatewaySubnet

---

## Inbound Rules

### AllowAnyCustom80443Inbound

Priority: 210

Protocol: TCP

Ports:
- 80
- 443

Purpose:
Allow HTTP and HTTPS traffic to Application Gateway.

---

### AllowInternet65200-65535Inbound

Priority: 230

Ports:
65200-65535

Purpose:
Application Gateway infrastructure communication.

---

### AllowAzureLoadBalancerInboundd

Priority: 490

Purpose:
Azure Load Balancer health and platform traffic.

---

### AllowInternet65503-65534

Priority: 495

Ports:
65503-65534

Purpose:
Application Gateway service communication.

---

### DenyAllOtherTraffic

Priority: 500

Access:
Deny

Purpose:
Block all other inbound traffic.
