using './main.bicep'

param firewallName = 'AzureFirewall_vwan-hub-westus'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}