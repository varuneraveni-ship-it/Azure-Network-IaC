using './main.bicep'

param bastionName = 'bastion-hub'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}
