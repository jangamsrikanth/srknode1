resource "azurerm_network_security_group" "nsgtest3" {
  name                = "nsgtest003"
  location            = azurerm_resource_group.testrg3.location
  resource_group_name = azurerm_resource_group.testrg3.name

  security_rule {
    name                       = "test"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}