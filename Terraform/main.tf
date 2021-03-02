terraform{
  required_providers{
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "8a279357-d029-4a15-a325-4b8c5bf1193d"
  client_id = "30eac82f-0a51-4058-b6a4-4230314f381a"
  client_secret = var.azureid
  tenant_id = "899789dc-202f-44b4-8472-a6d40f9eb440"
}

resource "azurerm_resource_group" "rg" {
  name = "kubernetes_rg"
  location = var.location
  tags = {
    environment = "CP2"
  }
}

#Storage account

resource "azurerm_storage_account" "stAccount" {
  name                      = "practica2unirjorge"
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"

}

