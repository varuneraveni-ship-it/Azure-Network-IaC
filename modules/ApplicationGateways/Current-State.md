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


# Current State - Front Door

## Front Door Profiles

| Name | Resource Group | Location | State |
|--------|--------|--------|--------|
| fd-bio | rg-network | Global | Active |
| fd-idis02 | rg-network | Global | Active |
| fd-ladbsservices3 | rg-network | Global | Active |
| fd-ladbs-org | rg-network | Global | Active |
| fd-permitla | rg-network | Global | Active |
| fd-dbslacity | rg-network | Global | Active |
| fd-eplanla | rg-applications | Global | Active |
| fd-ladbsservices2 | rg-applications | Global | Active |
| fd-ladbsservices | rg-servers | Global | Active |

## Source

Generated from Azure Front Door discovery.

---

## fd-ladbs-org

### General Information

Resource Group:
rg-network

Location:
Global

SKU:
Premium_AzureFrontDoor

Provisioning State:
Succeeded

Resource State:
Active

Origin Response Timeout:
60 Seconds

### Endpoints

- ep-ladbs-org
- ep-08dmzdevweb

### Origin Groups

- default-origin-group
- og-dmzdevweb

### Routes

#### ep-ladbs-org

- default-route
  - Forwarding Protocol: HTTPS Only
  - HTTPS Redirect: Enabled

#### ep-08dmzdevweb

- rt-08dmzdevweb
  - Forwarding Protocol: MatchRequest
  - HTTPS Redirect: Enabled

### Tags

- Created by: Wilson Tran
- Virtual Machine: az-08web15t


---

## fd-permitla

### General Information

Resource Group:
rg-network

Location:
Global

State:
Active

### Endpoints

- ep-prodpermitla
- testpermitla
- permitla-org

### Origin Groups

- prodpermitla
- testpermitla
- permitla-org
- og-maintenance

### Endpoint Details

#### ep-prodpermitla

Host:
ep-prodpermitla-dfa8dkb5aka4hngh.a01.azurefd.net

State:
Enabled

#### testpermitla

Host:
testpermitla-d7hhgbb2hmfqa6ex.a01.azurefd.net

State:
Enabled

#### permitla-org

Host:
permitla-org-gvchgvd4dgg5fbha.a01.azurefd.net

State:
Enabled

### Notes

- Session Affinity enabled for:
  - prodpermitla
  - testpermitla

- Session Affinity disabled for:
  - permitla-org
  - og-maintenance

  ### Routes

#### ep-prodpermitla

Route:
- prodpermitla

Settings:
- Forwarding Protocol: HttpOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### testpermitla

Route:
- testpermitla

Settings:
- Forwarding Protocol: HttpOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### permitla-org

Route:
- rt-permitla-org

Settings:
- Forwarding Protocol: HttpOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled


---

## fd-dbslacity

### General Information

Resource Group:
rg-network

Location:
Global

State:
Active

### Endpoints

- ep-dbs-lacity-gov
- ep-dbs-lacity-gov-staging
- ep-ladbs-ivts
- ep-dbslacitystg-conapp
- ep-atlas-dev
- ep-ai-dbs-lacity

### Origin Groups

- og-dbs-lacity-gov
- LADBSGo
- Atlas
- og-fire
- og-fire-dashboard
- og-wildfires
- og-fire-dev
- og-lacps-status
- og-cet-dashboard
- og-stagingconapp
- og-lacps-status-uat
- og-atlas-dev
- og-dashboards
- og-drupalcontainer-newsearch

### Notes

- Multiple application workloads hosted behind this Front Door.
- Includes production, staging, dashboard, Atlas, IVTS, AI, and wildfire-related services.
- Session Affinity is disabled across all discovered origin groups.

### Routes

#### ep-dbs-lacity-gov

- rt-dashboards-dev
  - Forwarding Protocol: MatchRequest
  - HTTPS Redirect: Enabled
  - Link To Default Domain: Enabled

#### ep-dbs-lacity-gov-staging

- route-staging
  - Forwarding Protocol: HttpsOnly
  - HTTPS Redirect: Enabled
  - Link To Default Domain: Enabled

#### ep-ladbs-ivts

- No routes returned

#### ep-dbslacitystg-conapp

- No routes returned

#### ep-atlas-dev

- route-atlas-dev
  - Forwarding Protocol: HttpsOnly
  - Origin Path: /dev/atlas
  - HTTPS Redirect: Enabled
  - Link To Default Domain: Enabled

#### ep-ai-dbs-lacity

- route-drupalcontainer-newsearch
  - Forwarding Protocol: MatchRequest
  - HTTPS Redirect: Enabled
  - Link To Default Domain: Enabled


  ---

## fd-eplanla

### General Information

Resource Group:
rg-applications

Location:
Global

State:
Active

### Endpoints

#### ep-eplanla

Host:
ep-eplanla-c7c3cag8h3c3cbhw.a01.azurefd.net

State:
Enabled

#### ep-eplanla-staging

Host:
ep-eplanla-staging-h4fqdchphrg8b9bw.a01.azurefd.net

State:
Enabled

### Origin Groups

- og-eplanla
- og-eplanla-staging

### Notes

- Production ePlanLA endpoint
- Separate staging environment
- Session Affinity disabled for all origin groups

### Routes

#### ep-eplanla

Route:
- route-eplanla

Settings:
- Forwarding Protocol: HttpsOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### ep-eplanla-staging

Route:
- route-eplanlastaging

Settings:
- Forwarding Protocol: HttpsOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

---

## fd-ladbsservices2

### General Information

Resource Group:
rg-applications

Location:
Global

State:
Active

### Endpoints

#### ladbsservices2

Host:
ladbsservices2-g0f8e9cuhecqbdc8.a01.azurefd.net

State:
Enabled

### Origin Groups

- og-ladbsservices2

### Routes

#### ladbsservices2

Route:
- route-ladbsservices2

Settings:
- Forwarding Protocol: HttpsOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Disabled

### Notes

- Session Affinity Disabled


---

## fd-ladbsservices

### General Information

Resource Group:
rg-servers

Location:
Global

State:
Active

### Endpoints

#### ep-ladbsservices1

Host:
ep-ladbsservices1-afgbdparb5esezbr.a01.azurefd.net

#### ep-08web15

Host:
ep-08web15-fgbhhfhpcjg4cdg4.a01.azurefd.net

#### ep-ivts

Host:
ep-ivts-cagwgegcb6csfues.a01.azurefd.net

#### ep-deletePermit

Host:
ep-deletePermit-chgdbjafcdafd2aw.a01.azurefd.net

### Origin Groups

- og-ladbsservices1
- og-08web15
- og-ladbs-ivts
- og-deletePermit-WUS3

### Session Affinity

Enabled:
- og-08web15
- og-ladbs-ivts

Disabled:
- og-ladbsservices1
- og-deletePermit-WUS3


### Routes

#### ep-ladbsservices1

Route:
- rt-ladbsservices1

Settings:
- Forwarding Protocol: HttpOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### ep-08web15

Route:
- rt-08web15

Settings:
- Forwarding Protocol: MatchRequest
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### ep-ivts

Route:
- rt-ladbs-ivts

Settings:
- Forwarding Protocol: MatchRequest
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

#### ep-deletePermit

Route:
- rt-deletePermit

Settings:
- Forwarding Protocol: MatchRequest
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled


---

## fd-ladbsservices3

### General Information

Resource Group:
rg-network

Location:
Global

State:
Active

### Endpoints

#### ep-ladbsservices3

Host:
ep-ladbsservices3-fwevhjgbhwhag8dw.a01.azurefd.net

State:
Enabled

### Origin Groups

- default-origin-group

### Session Affinity

Enabled:
- default-origin-group

### Routes

#### ep-ladbsservices3

Route:
- default-route

Settings:
- Forwarding Protocol: HttpsOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Disabled


---

## fd-bio

### General Information

Resource Group:
rg-network

Location:
Global

State:
Active

### Endpoints

#### ep-bio

Host:
ep-bio-ebbgbeegc4fcbzcy.a01.azurefd.net

State:
Enabled

### Origin Groups

- og-bio

### Session Affinity

Disabled


---

## fd-idis02

### General Information

Resource Group:
rg-network

Location:
Global

State:
Active

### Endpoints

#### ep-idis

Host:
ep-idis-dkezdmc2bkercbcz.a01.azurefd.net

State:
Enabled

#### ep-saidisprod

Host:
ep-saidisprod-fsa3aufbgvb7hqgd.a01.azurefd.net

State:
Enabled

### Origin Groups

- og-idis02
- og-storage-idiscontent-prod
- og-storage-saidisprod-blob

### Session Affinity

Enabled:
- og-idis02

Disabled:
- og-storage-idiscontent-prod
- og-storage-saidisprod-blob


### Routes

#### ep-idis

Route:
- route-idis

Settings:
- Forwarding Protocol: MatchRequest
- HTTPS Redirect: Enabled
- Link To Default Domain: Disabled

#### ep-saidisprod

Routes:
- route-saidisprod
- administrative-approval-blobs

Settings:
- Forwarding Protocol: HttpsOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled


### Routes

#### ep-bio

Route:
- route-bio

Settings:
- Forwarding Protocol: HttpOnly
- HTTPS Redirect: Enabled
- Link To Default Domain: Enabled

