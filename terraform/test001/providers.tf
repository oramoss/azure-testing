# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "AP-UKS-css-rg"
      storage_account_name = "apukscss1sa"
      container_name       = "azure-testing"
      key                  = "terraform.tfstate"
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
