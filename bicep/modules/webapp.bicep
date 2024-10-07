param webAppName string
param location string
param appServicePlanId string  

resource webApp 'Microsoft.Web/sites@2022-11-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlanId  
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.11' 
    }
    reserved: true 
  }
}

output webAppUrl string = webApp.properties.defaultHostName
