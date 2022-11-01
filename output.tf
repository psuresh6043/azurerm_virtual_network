output "id" { #The virtual NetworkConfiguration ID.
  value = azurerm_virtual_network.virtual_network.id
}
output "name" { #The name of the virtual network.
  value = azurerm_virtual_network.virtual_network.name
}
output "resource_group_name" { #The name of the resource group in which to create the virtual network.
  value = azurerm_virtual_network.virtual_network.resource_group_name
}
output "location" { #The location/region where the virtual network is created.
  value = azurerm_virtual_network.virtual_network.location
}
output "address_space" { #The list of address spaces used by the virtual network.
  value = azurerm_virtual_network.virtual_network.address_space
}
output "guid" { #The GUID of the virtual network.
  value = azurerm_virtual_network.virtual_network.guid
}
output "subnet" { #ne or more subnet blocks as defined below.
  value = azurerm_virtual_network.virtual_network.subnet
}

