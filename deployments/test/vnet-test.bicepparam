using './vnet.bicep'

param vnetName = 'vnet-module-test-wus3'
param location = 'westus3'
param addressPrefix = '10.193.232.0/22'
param subnetName = 'snet-app'
param subnetPrefix = '10.193.232.0/24'