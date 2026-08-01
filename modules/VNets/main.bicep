@description('Virtual Network Name')
param vnetName string

@description('Azure Region')
param location string

@description('Address Space')
param addressPrefixes array

@description('DNS Servers')
param dnsServers array = []

@description('Subnets')
param subnets array = []

@description('Tags')
param tags object = {}

resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: vnetName
  location: location
  tags: tags

  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }

    dhcpOptions: {
      dnsServers: dnsServers
    }

    subnets: [
      for subnet in subnets: {
        name: subnet.name
        properties: {
          addressPrefix: subnet.addressPrefix
        }
      }
    ]
  }
}

output vnetId string = vnet.id

output vnetNameOutput string = vnet.name