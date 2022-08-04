variable "location" {
  type        = string
  description = "Localizacao dos Rercursos do Azure. Ex: brazilsouth"
  default     = "eastus"
}
variable "namerg" {
  type        = string
  description = "Nome do Resource Group"
  default     = "rg-variaveis"
}
variable "tags" {
  type          = map
  description   = "Tags nos Recursos e Servicos do azure"
  default       = {
    ambiente    = "desenvolvimento"
    responsavel = "Marco Vinicio"
  }
}