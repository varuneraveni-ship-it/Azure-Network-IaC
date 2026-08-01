@description('Private Endpoint Name')
param privateEndpointName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource privateEndpoint 'Microsoft.Network/privateEndpoints@2024-05-01' = {
  name: privateEndpointName
  location: location
  tags: tags
}

output privateEndpointId string = privateEndpoint.id
output privateEndpointNameOutput string = privateEndpoint.name