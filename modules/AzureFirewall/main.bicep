@description('Azure Firewall Name')
param firewallName string

@description('Location')
param location string

resource firewall 'Microsoft.Network/azureFirewalls@2024-05-01' = {
  name: firewallName
  location: location
}

output firewallId string = firewall.id