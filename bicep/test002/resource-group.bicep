targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-bicep-demo'
  location: 'uksouth'
}

output rgName string = rg.name
