using './main.bicep'

param applicationGatewayName = 'ag-permitla3di'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}