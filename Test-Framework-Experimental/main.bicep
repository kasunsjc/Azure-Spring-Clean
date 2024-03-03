targetScope = 'resourceGroup'

@description('The location of the storage account')
param location string = 'westeurope'

@description('The kind of the storage account')
param kind string = 'StorageV2'

@description('kind of the storage account')
param sku string = 'Standard_LRS'

var storageAccountName = 'sasdladjlewerw'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  kind: kind
  sku: {
    name: sku
  }
}

// assertation for the storage account

assert kindIsCorrect = contains(kind, 'StorageV2')
assert skuIsCorrect = contains(sku, 'Standard_LRS')


