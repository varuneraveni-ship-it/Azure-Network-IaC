@description('Private Endpoint Name')
param privateEndpointName string

@description('Location')
param location string

resource privateEndpoint 'Microsoft.Network/privateEndpoints@2024-05-01' = {
  name: privateEndpointName
  location: location
}

output privateEndpointId string = privateEndpoint.id