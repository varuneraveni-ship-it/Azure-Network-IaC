@description('Firewall Policy Name')
param firewallPolicyName string

@description('Location')
param location string

@description('Tags')
param tags object = {}

resource firewallPolicy 'Microsoft.Network/firewallPolicies@2024-05-01' = {
  name: firewallPolicyName
  location: location
  tags: tags
}

output firewallPolicyId string = firewallPolicy.id
output firewallPolicyNameOutput string = firewallPolicy.name