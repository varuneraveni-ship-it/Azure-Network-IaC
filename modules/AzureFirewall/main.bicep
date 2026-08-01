@description('Azure Firewall Name')
param firewallName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource firewall 'Microsoft.Network/azureFirewalls@2024-05-01' = {
  name: firewallName
  location: location
  tags: tags
}

output firewallId string = firewall.id
output firewallNameOutput string = firewall.name