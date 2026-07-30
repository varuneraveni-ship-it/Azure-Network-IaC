@description('Virtual WAN Name')
param virtualWanName string

@description('Location')
param location string

resource virtualWan 'Microsoft.Network/virtualWans@2024-05-01' = {
  name: virtualWanName
  location: location

  properties: {
    type: 'Standard'
  }
}

output virtualWanId string = virtualWan.id