@description('Application Gateway Name')
param applicationGatewayName string

@description('Location')
param location string

resource applicationGateway 'Microsoft.Network/applicationGateways@2024-05-01' = {
  name: applicationGatewayName
  location: location
}

output applicationGatewayId string = applicationGateway.id