using namespace System.Net

# Input bindings are passed in via param block.
param($name, $TriggerMetadata)

Try{
    $SAResult = New-AzStorageAccount -Name $name -ResourceGroupName 'StorageAccounts' -Location 'West Europe' -SkuName Standard_LRS  -ErrorAction Stop
    Write-Host "StorageAccount created"
    $SAResult
}
Catch{
    Write-Host "ERROR, could not create storage account: $_"
}
