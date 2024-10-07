param appServicePlanName string
param location string
param sku string = 'B1'  

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
    capacity: 1
  }
  kind: 'linux'  
}

output appServicePlanId string = appServicePlan.id
