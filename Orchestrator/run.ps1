param($Context)

[int]$MaxCount = $Context.input

$StorageAccountNames = @()
for ($i = 1; $i -le $MaxCount; $i++) {
    Write-Host "This is loop $i"
    $StorageAccountNames += Invoke-ActivityFunction -FunctionName 'getstorageaccountname'
}

Foreach ($StorageAccountName in $StorageAccountNames) {
    Write-Host "StorageAccountName: $StorageAccountName"
    $Function = Invoke-ActivityFunction -FunctionName 'newstorageaccount' -input $StorageAccountName -noWait
}

# Return the storage account name
$StorageAccountNames


