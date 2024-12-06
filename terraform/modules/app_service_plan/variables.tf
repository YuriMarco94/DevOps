variable "name" {
  description = "The name of the app service plan."
  type        = string
}

variable "location" {
  description = "The Azure region where the app service plan will be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
}

variable "rg_name" {
  description = "The resource group where the app service plan will be created."
  type        = string
}

variable "os" {
  description = "The OS that the app service plan will be."
  type        = string
}

variable "sku" {
  description = "The SKU of the app service plan."
  type        = string
}