# Provedor Azure
provider "azurerm" {
  features {}

  subscription_id = 
  tenant_id       = 
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = "rg-example-dev-uks-001"
  location = "uksouth"
  tags     = local.tags
}

module "app_plan" {
  source   = "./modules/app_service_plan"
  name     = "plan-example-dev-uks-001"
  rg_name  = module.resource_group.resource_group_name
  location = module.resource_group.location
  os       = "Linux"
  sku      = "B1"
  tags     = local.tags
}

module "web_app" {
  source   = "./modules/app_service"
  name     = "app-example-dev-uks-001"
  rg_name  = module.resource_group.resource_group_name
  location = module.resource_group.location
  tags     = local.tags
}

# # Grupo de recursos no Azure
# resource "azurerm_resource_group" "example" {
#   name     = "rg-example-devops"
#   location = var.location
# }

# # Serviço App Service Plan (Linux)
# resource "azurerm_service_plan" "example" {
#   name                = "appserviceplan-example"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   os_type             = "Linux" # Escolha Linux ou Windows
#   sku_name            = "B1"    # Alterado para uma SKU básica paga

#   depends_on = [azurerm_resource_group.example]
# }

# # Web App (Linux)
# resource "azurerm_linux_web_app" "example" {
#   name                = "webapp-example-devops"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   service_plan_id     = azurerm_service_plan.example.id

#   site_config {
#     application_stack {
#       python_version = "3.8" # Configuração para Python
#     }
#   }

#   depends_on = [azurerm_service_plan.example]
# }
