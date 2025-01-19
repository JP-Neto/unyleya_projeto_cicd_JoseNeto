provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-unyleya"
  location = "eastus" 
}

# App Service Plan (Windows)
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "appserviceplan-devops"
  location            = azurerm_resource_group.rg_devops.location
  resource_group_name = azurerm_resource_group.rg_devops.name
  kind                = "Windows" 
  sku {
    tier = "Standard"
    size = "S1"
  }
}

# App Service (Windows com Docker)
resource "azurerm_windows_web_app" "app_service" {
  name                = "appweb-devops"
  location            = azurerm_resource_group.rg_devops.location
  resource_group_name = azurerm_resource_group.rg_devops.name
  service_plan_id     = azurerm_app_service_plan.app_service_plan.id

  site_config {
    app_command_line = ""
    windows_fx_version = "DOCKER|<DOCKER_USERNAME>/<IMAGEM>:<TAG>" # Atualize com seu Docker Hub
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_REGISTRY_SERVER_URL          = "https://index.docker.io/v1/"
    DOCKER_REGISTRY_SERVER_USERNAME     = var.docker_username
    DOCKER_REGISTRY_SERVER_PASSWORD     = var.docker_password
  }
}

output "app_service_url" {
  value = azurerm_windows_web_app.app_service.default_site_hostname
}
