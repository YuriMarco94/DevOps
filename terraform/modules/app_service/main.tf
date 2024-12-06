resource "azurerm_linux_web_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = var.app_plan_id

  site_config {
    application_stack {
      python_version = "3.8" # Configuração para Python
    }
  }
}