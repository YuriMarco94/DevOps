output "app_service_plan_name" {
  description = "The app service plan name"
  value       = azurerm_service_plan.this.name
}

output "app_service_plan_id" {
  description = "The ID of the app service plan"
  value       = azurerm_service_plan.this.id
}

output "app_service_plan_sku" {
  description = "The SKU of the app service plan"
  value       = azurerm_service_plan.this.sku_name
}