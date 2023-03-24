param webAppName string 
param hostingPlanName string  
param appInsightsLocation string = 'West Europe'
param appInsightsName string 
param sku string = 'S1'
param registryName string 
param imageName string
param registryLocation string = 'West Europe'
param registrySku string = 'Standard'
param startupCommand string = ''

module appInsights './modules/appInsights.module.bicep' = {
  name: 'appInsights'
  params: {
    name: appInsightsName
    location: appInsightsLocation
  }
}

module acr 'modules/registry.module.bicep' = {
  name: 'acr'
  params: {
    name: registryName
    location: registryLocation
    sku: registrySku
  }
}

module webApp './modules/appService.module.bicep' = {
  name: 'webApp'
  params: {
    name: webAppName
    location: resourceGroup().location
    sku: sku
    registryLoginServer: acr.outputs.registryLoginServer
    registryUsername: acr.outputs.registryUsername
    registryKey: acr.outputs.registryKey
    appInsightsKey: appInsights.outputs.appInsightInstrumentationKey
    imageName: imageName
    startUpCommand: startupCommand
  }
  dependsOn: [
    acr
    appInsights
  ]
}





