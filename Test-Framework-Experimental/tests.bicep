// Pass test 
test passTest 'main.bicep' = {
  params: {
    kind: 'StorageV2'
    sku: 'Standard_LRS'
  }
}
// Fail test 
test failedTest 'main.bicep' = {
  params: {
    kind: 'BlobStorage'
    sku: 'Standard_GRS'
  }
}
