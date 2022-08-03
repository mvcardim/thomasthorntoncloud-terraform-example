#terraform {
#  backend "azurerm" {
#    resource_group_name  = "tamopstfstates"
#    storage_account_name = "tfstatedevops"
#    container_name       = "terraformgithubexample"
#    key                  = "terraformgithubexample.tfstate"
# }
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.2"
    }
  }
}
provider "azurerm" {
    features {}
} 

#data "azurerm_client_config" "current" {}

#Criaçao do Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = "tamops"
  location = "eastus2"
}

#Criaçao de  Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "tamops-vnet"
  address_space       = ["192.168.0.0/16"]
  location            = "eastus2"
  resource_group_name = azurerm_resource_group.tamops.name
}

# Criaçao da Subnet
#resource "azurerm_subnet" "subnet" {
#  name                 = "subnet"
#  resource_group_name  = azurerm_resource_group.tamops.name
#  virtual_network_name = azurerm_virtual_network.vnet.name
#  address_prefix       = "192.168.0.0/24"
#}
