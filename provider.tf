terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ankit-rg-19oct"
    storage_account_name = "ankitstorage19oct"
    container_name       = "ankit-container-19oct"
    key                  = "ankit.tfstate"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}
