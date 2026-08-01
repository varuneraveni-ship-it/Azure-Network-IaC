@description('Virtual Hub Name')
param virtualHubName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource virtualHub 'Microsoft.Network/virtualHubs@2024-05-01' = {
  name: virtualHubName
  location: location
  tags: tags
}

output virtualHubId string = virtualHub.id

output virtualHubNameOutput string = virtualHub.name