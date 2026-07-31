# Azure Firewall Inventory

## West US

Firewall:
firewall-hub_policy_68d8cb

SKU:
Premium

Features:
- TLS Inspection Disabled
- IDPS Mode Alert

Rule Collections:
- azure-default
- Testing
- AllowSSH-RDP
- AllowSFTP-AVD
- dmz-rules
- production-vnet-default
- devtest-vnet-default
- avd-vnet-default
- hub-vnet-default

Application Rules:
- azure-avd-policy-westus-nerdio
- azure-policy-windowsupdates
- deny-sn-dmz

---

## East US

Firewall:
firewallpolicy-eus

Associated Firewall:
AzureFirewall_vwan-hub-eastus

Location:
East US

Key Rule Collections:

- ReplicationRules
- AVDRules
- Database
- Monitoring
- azure-default-eus
- AllowSSH-RDP

Purpose:

- East US production traffic
- SQL replication
- AVD connectivity
- Monitoring
- Identity connectivity


---

## West US 3

Firewall:
firewallpolicy-wus3

Associated Firewall:
AzureFirewall_vwan-hub-westus3

Location:
West US 3

Key Rule Collections:

- AllowRules

Purpose:

- Disaster Recovery environment
- WestUS3 connectivity
- SQL DR replication
- On-prem connectivity
- Domain Controller replication