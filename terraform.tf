terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "1024f94e-7026-437a-886a-1a3477ec150b"
  features {}
}  