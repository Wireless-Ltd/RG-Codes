terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "805cc58a-b2c1-4e91-97ec-b0ba35c3dc96"
}

# 2 resource groups 

resource "azurerm_resource_group" "rg1" {
  name     = "umair-rg1"
  location = "East US"
}

resource "azurerm_resource_group" "rg2" {
  name     = "umair-rg2"
  location = "East US"
}

# 2 storage account blocks

resource "azurerm_storage_account" "stg1" {
  name                     = "storageactut1"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# resource "azurerm_storage_account" "stg2" {
#   name                     = "storageactut2"
#   resource_group_name      = azurerm_resource_group.rg2.name
#   location                 = azurerm_resource_group.rg2.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }
