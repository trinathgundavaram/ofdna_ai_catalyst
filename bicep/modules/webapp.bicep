param webAppName string
param location string
param appServicePlanId string  

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlanId  
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.1'  
    }
    reserved: true  
  }
}

output webAppUrl string = webApp.properties.defaultHostName
