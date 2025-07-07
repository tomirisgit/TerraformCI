terraform {
  required_version = ">=1.12.2"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.43.0"
    }
  }
  cloud { 
    organization = "IRIS_Testing" 
    workspaces { 
      name = "RemoteState" 
    } 
  } 
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "TomTerraformTesting"
  location = "UK South"
}

resource "azurerm_storage_account" "storage" {
  name     = "sttomtestdevuks1"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}