
resource "azurerm_resource_group" "example" {
  name     = var.namerg
  location = var.location
  tags     = merge(var.tags, { treinamento = "terraform" })
}

resource "azurerm_network_security_group" "example" {
  name                = var.namerg
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags                = var.tags
}
resource "azurerm_app_service_plan" "plan" {
  name                = var.app-nome
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}


resource "azurerm_app_service" "appservice" {
  name                = var.app-nome
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.plan.id
}


resource "azurerm_app_service_slot" "slot" {
  name                = var.app-nome
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_name    = azurerm_app_service.appservice.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

}

#resource "azurerm_virtual_network" "vnet" {
#  name                = var.vnet.vNetName
#  address_space       = var.vnet.address_space
#  location            = azurerm_resource_group.example.location
#  resource_group_name = azurerm_resource_group.example.name
#}
#resource "azurerm_subnet" "subnets" {
#  for_each             = var.Subnets
# name                 = each.value["name"]
#  resource_group_name  = azurerm_resource_group.example.name
#  virtual_network_name = azurerm_virtual_network.vnet.name
#  address_prefixes     = each.value["prefix"]
#
#  depends_on = [
#    azurerm_virtual_network.vnet
#  ]
#}