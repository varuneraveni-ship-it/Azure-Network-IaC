@description('Route Table Name')
param routeTableName string

@description('Azure Location')
param location string

@description('Tags')
param tags object = {}

resource routeTable 'Microsoft.Network/routeTables@2024-05-01' = {
  name: routeTableName
  location: location
  tags: tags
}

output routeTableId string = routeTable.id
output routeTableNameOutput string = routeTable.name