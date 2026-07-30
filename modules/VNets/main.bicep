@description('Virtual Network Name')
param vnetName string

@description('Azure Region')
param location string

@description('Address Space')
param addressPrefixes array

resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: vnetName
  location: location

  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
  }
}

output vnetId string = vnet.id