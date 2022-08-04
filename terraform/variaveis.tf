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
  type          = string
  description   = "Tags nos Recursos e Servicos do azure"
  default       = "desenvolvimento"
}
