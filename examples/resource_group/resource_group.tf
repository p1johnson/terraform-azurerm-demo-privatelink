variable "location" {
  type        = string
  default     = "uksouth"
  description = "Azure region for creating the demo"
}

variable "resource_group_name" {
  type        = string
  description = "Azure resource group for creating the demo"
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}
