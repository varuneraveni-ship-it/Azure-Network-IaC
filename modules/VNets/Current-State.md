# Current State - VNet Hub WestUS

VNet Name:
vnet-hub-westus

Resource Group:
rg-network

Location:
westus

Address Space:
10.193.192.0/22

Subnets:

- AzureBastionSubnet
  - 10.193.193.0/26

- ApplicationGatewaySubnet
  - 10.193.195.0/27

- AzureDnsInbound
  - 10.193.193.160/28

- AzureDnsOutbound
  - 10.193.193.176/28

- IdentitySubnet
  - 10.193.194.0/28