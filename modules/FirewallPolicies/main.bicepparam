using './main.bicep'

param firewallPolicyName = 'firewall-hub-policy_68d8cb'

param location = 'westus'

param tags = {
  Environment: 'Production'
  ManagedBy: 'Bicep'
}