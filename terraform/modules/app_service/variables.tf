variable "name" {
  description = "The name of the app service."
  type        = string
}

variable "location" {
  description = "The Azure region where the app service will be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
}

variable "rg_name" {
  description = "The resource group where the app service will be created."
  type        = string
}

variable "app_plan_id" {
  default = "The ID of the App service plan to be referenced."
  type    = string
}