terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.76.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ws-devops"
    storage_account_name = "cgmsgtf"
    container_name       = "tfstateazdevops"
    key                  = "<your unique name>.tfstate"
  }
}

provider "azurerm" {
  features {}
}

