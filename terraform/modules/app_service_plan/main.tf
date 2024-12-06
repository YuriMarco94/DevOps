resource "azurerm_service_plan" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = var.os
  sku_name            = var.sku
}