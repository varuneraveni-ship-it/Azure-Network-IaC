@description('Front Door Profile Name')
param frontDoorName string

@description('SKU')
param skuName string = 'Premium_AzureFrontDoor'

resource frontDoorProfile 'Microsoft.Cdn/profiles@2024-02-01' = {
  name: frontDoorName
  location: 'global'

  sku: {
    name: skuName
  }
}

output frontDoorId string = frontDoorProfile.id

output frontDoorNameOutput string = frontDoorProfile.name