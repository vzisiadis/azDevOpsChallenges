param location string
param name string
param kind string = 'web'
param ApplicationType string = 'web'
param RequestSource string = 'rest'
param laProject string = 'devopsworkshop'
param retentionDays int = 90

resource laWorkspace 'Microsoft.OperationalInsights/workspaces@2020-08-01' = {
  location: location
  name: 'la-${name}'
  tags: {
    displayName: name
    projectName: laProject
  }
  properties: {
    retentionInDays: retentionDays
    sku:{
      name:'PerGB2018'
    }   
  }
}

resource appInsights 'Microsoft.Insights/components@2020-02-02-preview' = {
  name: name
  location: location
  kind: kind
  properties: {
    Application_Type: ApplicationType
    Request_Source: RequestSource
    WorkspaceResourceId: laWorkspace.id  
  }
}

output appInsightInstrumentationKey string = appInsights.properties.InstrumentationKey
