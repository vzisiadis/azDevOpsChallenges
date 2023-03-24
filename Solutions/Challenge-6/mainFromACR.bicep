
param webAppName string = 'myapp-devops-dev'
param hostingPlanName string  = ''//'<prefix>-devops-asp'
param appInsightsLocation string = 'West Europe'
param appInsightsName string ='myapp-devops-ai'
param sku string = 'S1'
param registryName string = 'registry' //'<prefix>devopsreg'
param imageName string = 'myapp-devopsimage' //'<prefix>-devopsimage'
param registryLocation string = 'West Europe'
param registrySku string = 'Standard'
param startupCommand string = ''


module webAppContainer 'br:registry.azurecr.io/appservicecontainer:1.0.20230321.3' = {
  name: 'webAppContainer'
  params: {
    webAppName: webAppName
    appInsightsLocation: appInsightsLocation
    appInsightsName: appInsightsName
    sku: sku
    registryName: registryName
    imageName: imageName
    registryLocation: registryLocation
    registrySku: registrySku
    startupCommand: startupCommand
    hostingPlanName: hostingPlanName
  }
}



