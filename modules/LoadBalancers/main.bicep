@description('Load Balancer Name')
param loadBalancerName string

@description('Location')
param location string

resource loadBalancer 'Microsoft.Network/loadBalancers@2024-05-01' = {
  name: loadBalancerName
  location: location
}

output loadBalancerId string = loadBalancer.id