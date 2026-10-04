terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ramujia"
    storage_account_name = "ramukigangaji786a"
    container_name       = "ramramjia"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}