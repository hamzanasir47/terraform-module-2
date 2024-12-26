terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #subscription_id = "9dfcb940-4a7b-4e3f-b55d-e9fd0dece2eb"
  features {}
  #version = "3.0.0"
  #use_azure_cli = true
}
