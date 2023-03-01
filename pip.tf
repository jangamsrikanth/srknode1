resource "azurerm_public_ip" "Publicipnew3" {
  name                = "publicip03"
  resource_group_name = azurerm_resource_group.testrg3.name
  location            = azurerm_resource_group.testrg3.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}