output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "web_app_url" {
  description = "URL do Web App"
  value       = azurerm_linux_web_app.example.default_hostname
}
