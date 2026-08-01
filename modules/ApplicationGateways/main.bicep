@description('Application Gateway Name')
param applicationGatewayName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource applicationGateway 'Microsoft.Network/applicationGateways@2024-05-01' = {
  name: applicationGatewayName
  location: location
  tags: tags
}

output applicationGatewayId string = applicationGateway.id
output applicationGatewayNameOutput string = applicationGateway.name