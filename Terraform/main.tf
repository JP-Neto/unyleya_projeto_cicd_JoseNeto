provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-unyleya"
  location = "eastus" # Escolha a região que preferir
}

# App Service Plan
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "appserviceplan-devops"
  location            = azurerm_resource_group.rg_devops.location
  resource_group_name = azurerm_resource_group.rg_devops.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

# App Service
resource "azurerm_linux_web_app" "app_service" {
  name                = "appweb-devops"
  location            = azurerm_resource_group.rg_devops.location
  resource_group_name = azurerm_resource_group.rg_devops.name
  service_plan_id     = azurerm_app_service_plan.app_service_plan.id

  site_config {
    app_command_line = ""
    linux_fx_version = "DOCKER|jpneto90/unyleya_projeto_devops:latest"
  }

  app_settings = {
    DOCKER_REGISTRY_SERVER_URL      = "https://index.docker.io/v1/"
    DOCKER_REGISTRY_SERVER_USERNAME = var.docker_username
    DOCKER_REGISTRY_SERVER_PASSWORD = var.docker_password
  }
}

# Output do App Service
output "app_service_url" {
  value = azurerm_linux_web_app.app_service.default_site_hostname
}
