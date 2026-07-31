# Current State - Application Gateways

## Application Gateways

### West US

| Name | Resource Group |
|--------|--------|
| ag-dbslacitygov | rg-applications |
| ag-prodsap | rg-applications |
| ag-permitla3di | rg-network |

## Location

westus

## Source

Generated from Azure discovery.

---

## ag-permitla3di

### General Information

Resource Group:
rg-network

Location:
westus

SKU:
WAF_v2

Operational State:
Running

HTTP2:
Enabled

### Backend Pools

- bp-permitla

### HTTP Listeners

- http-listener
- https-listener

### Routing Rules

- http-rule
- https-rule

### Health Probes

No custom probes discovered.

### Purpose

PermitLA public-facing application traffic.


---

## ag-dbslacitygov

### General Information

Resource Group:
rg-applications

Location:
westus

### Backend Pools

- drupal-prd-appservc

### HTTP Listeners

- https-listener

### Routing Rules

- default-route-rule

### Purpose

Drupal-based production web application.

---

## ag-prodsap

### General Information

Resource Group:
rg-applications

Location:
westus

### Backend Pools

- bp-prodsap

### HTTP Listeners

- http-listener
- https-listener

### Routing Rules

- http-rule
- https-to-backend

### Purpose

Production SAP application traffic.