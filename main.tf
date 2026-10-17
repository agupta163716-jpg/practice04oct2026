terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "143b8f1a-3967-4a7b-bafd-2e157e1af368"
}

resource "azurerm_resource_group" "practice" {
  name     = "rg-terraform-practice-17oct"
  location = "Central India"
}