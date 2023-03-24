param location string
param name string
param sku string
param registryLoginServer string
param registryUsername string
param registryKey string
param appInsightsKey string
param startUpCommand string
param imageName string

resource hostingPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  sku: {
    tier: first(skip(split(sku, ' '), 1))
    name: first(split(sku, ' '))
  }
  kind: 'linux'
  name: 'asp-${name}'
  location: location
  properties: {
    name: 'asp-${name}'
    workerSizeId: '0'
    reserved: true
    numberOfWorkers: '1'
    hostingEnvironment: ''
  }
}


resource webApp 'Microsoft.Web/sites@2016-03-01' = {
  name: 'as-${name}'
  location: location
  properties: {
    name: 'as-${name}'
    siteConfig: {
      appSettings: [
        {
          name: 'DOCKER_REGISTRY_SERVER_URL'
          value: 'https://${registryLoginServer}'
        }
        {
          name: 'DOCKER_REGISTRY_SERVER_USERNAME'
          value: registryUsername
        }
        {
          name: 'DOCKER_REGISTRY_SERVER_PASSWORD'
          value: registryKey
        }
        {
          name: 'WEBSITES_ENABLE_APP_SERVICE_STORAGE'
          value: 'false'
        }
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: appInsightsKey
        }
        {
          name: 'APPLICATIONINSIGHTS_CONNECTION_STRING'
          value: 'InstrumentationKey=${appInsightsKey}'
        }         
      ]
      appCommandLine: startUpCommand
      linuxFxVersion: 'DOCKER|${registryLoginServer}/${imageName}'
    }
    serverFarmId: hostingPlan.id
    hostingEnvironment: ''
  }
  dependsOn: [
    hostingPlan

  ]
}
