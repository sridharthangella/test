// Parameters

// All
param location string = resourceGroup().location

param tags object

// Subnet
param vnetName string

param addressPrefixes array

param ipSubnets array

// Bastion
param bastionPubIpName string

param bastionName string


// Run
module vnet './vnet/vnet.bicep' = {
  name: 'vnetDeploy'
  params: {
    location: location
    tags: tags
    ipSubnets: ipSubnets
    vnetName: vnetName
    addressPrefixes: addressPrefixes
  }
}

