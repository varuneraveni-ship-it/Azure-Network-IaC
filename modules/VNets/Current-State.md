# Current State - vnet-hub-westus

## VNet Information

Name: vnet-hub-westus

Resource Group: rg-network

Location: westus

Provisioning State: Succeeded

Address Space:
- 10.193.192.0/22

## DNS Servers

- 10.193.204.36
- 10.193.194.5
- 10.193.194.6

## Subnets

### AzureBastionSubnet

Address Prefix:
- 10.193.193.0/26

Purpose:
- Azure Bastion

### ApplicationGatewaySubnet

Address Prefix:
- 10.193.195.0/27

Associated NSG:
- nsg-ag-dmz

Associated Route Table:
- rt-dmz

Purpose:
- Azure Application Gateway

### AzureDnsInbound

Address Prefix:
- 10.193.193.160/28

Delegation:
- Microsoft.Network/dnsResolvers

Purpose:
- Azure DNS Private Resolver Inbound Endpoint

### AzureDnsOutbound

Address Prefix:
- 10.193.193.176/28

Delegation:
- Microsoft.Network/dnsResolvers

Purpose:
- Azure DNS Private Resolver Outbound Endpoint

### IdentitySubnet

Address Prefix:
- 10.193.194.0/28

Associated NSG:
- aadds-nsg

Associated NAT Gateway:
- ng-hubvnet

Purpose:
- Azure AD DS / Identity Services

## VNet Peerings

### Virtual WAN Hub

Remote Network:
- HV_vwan-hub-westus

Remote Address Space:
- 10.193.208.0/23

Status:
- Connected

### East US Production

Remote Network:
- vnet-production-eastus

Remote Address Space:
- 10.193.104.0/21

Status:
- Connected


# vnet-hub-westus

## General

Resource Group: rg-network

Location: westus

Address Space:
- 10.193.192.0/22

DNS Servers:
- 10.193.204.36
- 10.193.194.5
- 10.193.194.6

## Subnets

| Subnet | Prefix |
|----------|----------|
| AzureBastionSubnet | 10.193.193.0/26 |
| ApplicationGatewaySubnet | 10.193.195.0/27 |
| AzureDnsInbound | 10.193.193.160/28 |
| AzureDnsOutbound | 10.193.193.176/28 |
| IdentitySubnet | 10.193.194.0/28 |

## Services

- Azure Bastion
- Application Gateway
- Azure DNS Private Resolver
- Azure AD DS
- NAT Gateway

## Peerings

- Virtual WAN Hub
- vnet-production-eastus