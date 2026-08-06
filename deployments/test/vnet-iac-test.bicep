resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: 'vnet-iac-test-wus3'
  location: 'westus3'

  tags: {
    Owner: 'Varun.eraveni@lacity.org'
    Purpose: 'IaC-Test'
  }

  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.193.228.0/22'
      ]
    }

    subnets: [
      {
        name: 'snet-app'
        properties: {
          addressPrefix: '10.193.228.0/24'
        }
      }
    ]
  }
}