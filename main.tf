provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = var.location  
  tags     = local.common_tags
}

resource "azurerm_virtual_network" "main" {
  name                = local.virtual_network_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = local.common_tags
}