terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG_BKEND_UT"             # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "stgutbkend"             # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "bkendcontainer"                # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "Terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    
    }
}

provider "azurerm" {
  features {}
  subscription_id = "8b0422c9-d3b4-4ad5-b676-1cd162a61f87"
}

# 2 resource groups 

resource "azurerm_resource_group" "rg1" {
  name     = "umair-rg1"
  location = "East US"
}

# resource "azurerm_resource_group" "rg2" {
#   name     = "umair-rg2"
#   location = "East US"
# }

# 2 storage account blocks

# resource "azurerm_storage_account" "stg1" {
#   name                     = "storageactut1"
#   resource_group_name      = azurerm_resource_group.rg1.name
#   location                 = azurerm_resource_group.rg1.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }

# resource "azurerm_storage_account" "stg2" {
#   name                     = "storageactut2"
#   resource_group_name      = azurerm_resource_group.rg2.name
#   location                 = azurerm_resource_group.rg2.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }
