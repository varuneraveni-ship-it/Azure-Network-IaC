using './main.bicep'

param routeTableName = 'rt-ladbsproduction'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}