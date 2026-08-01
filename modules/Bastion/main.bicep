@description('Azure Bastion Name')
param bastionName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource bastionHost 'Microsoft.Network/bastionHosts@2024-05-01' = {
  name: bastionName
  location: location
  tags: tags
}

output bastionId string = bastionHost.id

output bastionNameOutput string = bastionHost.name