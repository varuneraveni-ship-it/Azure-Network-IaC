using './main.bicep'

param privateEndpointName = 'pe-ladbschatgpt'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}