@description('Network Security Group Name')
param nsgName string

@description('Azure Region')
param location string

@description('Tags')
param tags object = {}

resource nsg 'Microsoft.Network/networkSecurityGroups@2024-05-01' = {
  name: nsgName
  location: location
  tags: tags
}

output nsgId string = nsg.id
output nsgNameOutput string = nsg.name