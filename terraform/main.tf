# Create the Linux App Service Plan
resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.resource_group_name}-app-service-plan"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = "${var.resource_group_name}-web-app"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  enabled             = true
  public_network_access_enabled = true
  site_config {
    local_mysql_enabled = true
    application_stack {
      python_version = "3.11"
    }
  }
  app_settings = {
    # These are app specific environment variables
    "AZURE_MYSQL_HOST"     = "${azurerm_mysql_server.mysql_server.fqdn}"
    "AZURE_MYSQL_PASSWORD" = "${azurerm_mysql_server.mysql_server.administrator_login_password}"
    "AZURE_MYSQL_USER"     = "${azurerm_mysql_server.mysql_server.administrator_login}@${azurerm_mysql_server.mysql_server.name}"
  }
}
#  Deploy code from a public GitHub repo
resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = azurerm_linux_web_app.web_app.id
  repo_url           = var.repo_url
  branch             = "main"
  use_manual_integration = false
  use_mercurial      = false
}
