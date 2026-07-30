@description('Route Table Name')
param routeTableName string

@description('Azure Location')
param location string

resource routeTable 'Microsoft.Network/routeTables@2024-05-01' = {
  name: routeTableName
  location: location
}

output routeTableId string = routeTable.id