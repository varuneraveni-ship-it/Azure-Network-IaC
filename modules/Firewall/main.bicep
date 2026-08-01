@description('Azure Firewall Name')
param firewallName string

@description('Azure Region')
param location string

resource firewall 'Microsoft.Network/azureFirewalls@2024-05-01' = {
  name: firewallName
  location: location
}

output firewallId string = firewall.id

