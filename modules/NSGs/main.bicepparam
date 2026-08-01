using './main.bicep'

param nsgName = 'nsg-ladbsproduction'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}