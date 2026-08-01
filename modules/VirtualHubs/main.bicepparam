using './main.bicep'

param virtualHubName = 'vwan-hub-westus'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}