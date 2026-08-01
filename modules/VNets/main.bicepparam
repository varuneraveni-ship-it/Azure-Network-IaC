using './main.bicep'

param vnetName = 'vnet-hub-westus'

param location = 'westus'

param addressPrefixes = [
  '10.193.192.0/22'
]

param dnsServers = [
  '10.193.204.36'
  '10.193.194.5'
  '10.193.194.6'
]

param subnets = [
  {
    name: 'AzureBastionSubnet'
    addressPrefix: '10.193.193.0/26'
  }
  {
    name: 'ApplicationGatewaySubnet'
    addressPrefix: '10.193.195.0/27'
  }
  {
    name: 'AzureDnsInbound'
    addressPrefix: '10.193.193.160/28'
  }
  {
    name: 'AzureDnsOutbound'
    addressPrefix: '10.193.193.176/28'
  }
  {
    name: 'IdentitySubnet'
    addressPrefix: '10.193.194.0/28'
  }
]

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}