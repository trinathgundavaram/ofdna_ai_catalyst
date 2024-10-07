param webAppName string
param location string
param appServicePlanName string
param sku string = 'B1'

module servicePlanModule './modules/serviceplan.bicep' = {
  name: 'deployServicePlan'
  params: {
    appServicePlanName: appServicePlanName
    location: location
    sku: sku
  }
}

module webAppModule './modules/webapp.bicep' = {
  name: 'deployWebApp'
  params: {
    webAppName: webAppName
    location: location
    appServicePlanId: servicePlanModule.outputs.appServicePlanId
  }
}

output webAppUrl string = webAppModule.outputs.webAppUrl
