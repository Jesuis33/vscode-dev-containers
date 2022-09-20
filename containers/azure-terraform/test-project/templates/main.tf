provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "eastus"
  tags = {
    git_org  = "Jesuis33"
    git_repo = "vscode-dev-containers"
  }
}
