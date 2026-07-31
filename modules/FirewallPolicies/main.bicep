@description('Firewall Policy Name')
param firewallPolicyName string

@description('Location')
param location string

resource firewallPolicy 'Microsoft.Network/firewallPolicies@2024-05-01' = {
  name: firewallPolicyName
  location: location
}

output firewallPolicyId string = firewallPolicy.id