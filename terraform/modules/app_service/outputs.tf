output "app_service_name" {
  description = "The app service name"
  value       = azurerm_linux_web_app.this.name
}

output "app_service_id" {
  description = "The ID of the app service"
  value       = azurerm_linux_web_app.this.id
}