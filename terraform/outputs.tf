output "app_service_url" {
  description = "URL of the Azure App Service"
  value       = azurerm_linux_web_app.web_app.default_hostname
}

output "sql_server_fqdn" {
  value = azurerm_mysql_server.mysql_server.fqdn
}

output "database_name" {
  value = azurerm_mysql_database.mysql_database.name
}
