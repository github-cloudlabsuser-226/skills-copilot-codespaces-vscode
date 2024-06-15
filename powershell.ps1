# Connect to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "YourResourceGroupName"
$location = "YourLocation"
$storageAccountName = "YourStorageAccountName"
$sku = "Standard_LRS"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $sku