@description('Virtual Hub Name')
param virtualHubName string

@description('Location')
param location string

resource virtualHub 'Microsoft.Network/virtualHubs@2024-05-01' = {
  name: virtualHubName
  location: location
}

output virtualHubId string = virtualHub.id