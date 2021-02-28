resource "azurerm_resource_group" "example" {
  name     = "NICRG1000"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "nicvnetwork12"
  address_space       = ["192.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "devsub12"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["192.0.2.0/24"]
}

resource "azurerm_network_interface" "example" {
  name                = "NIC12"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}