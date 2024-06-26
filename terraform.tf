provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "example" {
    name     = "example-resource-group"
    location = "West US"
}

resource "azurerm_storage_account" "example" {
    name                     = "examplestorageaccount"
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "dev"
    }
}