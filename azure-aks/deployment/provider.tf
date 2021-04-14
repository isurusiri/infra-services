terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "account_name"
    container_name       = "tfstate"
    key                  = "dep.terraform.tfstate"
  }
  
}

provider "azurerm" {
    version = "~> 2.4"
    features {}
}