param sku string
param name string
param location string
param adminUserEnabled string = 'true'

resource registry 'Microsoft.ContainerRegistry/registries@2022-12-01' = {
  sku: {
    name: sku
  }
  name: name
  location: location
  properties: {
    adminUserEnabled: adminUserEnabled
  }
}

output registryLoginServer string = registry.properties.loginServer
output registryUsername string = registry.listCredentials().username
output registryKey string = registry.listCredentials().passwords[0].value


