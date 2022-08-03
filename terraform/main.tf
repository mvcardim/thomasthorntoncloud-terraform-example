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
resource "azurerm_resource_group" "rg" {

  name     = "rg-terraform-import"
  location = "brazilsouth"
  tags = {
    "ambiente" = "treinamento"
  }
}
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-import"
  resource_group_name = "rg-terraform-import"
  location            = "brazilsouth"
  address_space       = ["10.0.0.0/16", "192.168.0.0/16"]
  tags = {
    "ambiente" = "teste"
  }
}
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-import"
  location            = "brazilsouth"
  resource_group_name = "rg-terraform-import"
}
