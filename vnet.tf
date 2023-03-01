resource "azurerm_virtual_network" "testvnet003" {
  name                = "testvnet3"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.testrg3.location
  resource_group_name = azurerm_resource_group.testrg3.name
}

resource "azurerm_subnet" "subnettest3" {
  name                 = "subnetC"
  resource_group_name  = azurerm_resource_group.testrg3.name
  virtual_network_name = azurerm_virtual_network.testvnet003.name
  address_prefixes     = ["192.168.0.0/24"]
}