terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.2"
    }
  }
  backend "azurerm" {
    resource_group_name     = "terraformstate"
    storage_account_name    = "tfstatetreinamento"
    container_name          = "terraformstate"
    key                     = "6jh5DfNL1qwV94EwTL4N+s+5lcLsEfyPseJoABtU1ZPqQ0DHjjxL3yf3ryGIQOaOSyy++EoBdnCJ+AStMh0ezA=="
  }
}
provider "azurerm" {
  features {}
}