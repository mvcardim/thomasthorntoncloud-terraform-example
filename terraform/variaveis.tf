variable "location" {
  type        = string
  description = "Localizacao dos Rercursos do Azure. Ex: brazilsouth"
  default     = "eastus"
}
variable "namerg" {
  type        = string
  description = "Nome do Resource Group"
  default     = "exemplo"
}
variable "tags" {
  type        = map(any)
  description = "Tags nos Recursos e Servicos do azure"
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Marco Vinicio"
  }
}
variable "slot-nome" {
  type = string
}
#variable "vnet" {
#  type = any
#  default = {
#    "vNetName"      = "vnet-001"
#    "address_space" = ["172.16.0.0/16"]
#  }
#}
#variable "Subnets" {
#  type = any
#  default = {
#    "GatewaySubnet" = {
#      "name"       = "GatewaySubnet"
#      "prefix"     = ["172.16.0.0/26"]
#      "routeTable" = "rt-vnet-connectivity-gateway-001"
#    }
#    "FirewallSubnet" = {
#      "name"       = "AzureFirewallSubnet"
#      "prefix"     = ["172.16.0.64/26"]
#      "routeTable" = "rt-vnet-connectivity-firewall-001"
#    }
#  }
#}

