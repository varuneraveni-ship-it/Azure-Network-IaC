@description('Azure Bastion Name')
param bastionName string

@description('Location')
param location string

resource bastionHost 'Microsoft.Network/bastionHosts@2024-05-01' = {
  name: bastionName
  location: location
}

output bastionId string = bastionHost.id