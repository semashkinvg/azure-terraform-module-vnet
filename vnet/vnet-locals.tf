locals {
  subnets_output = {
    for k, v in var.vnet.subnets :
    k => {
      id   = azurerm_subnet.vnet_subnet[k].id
      name = azurerm_subnet.vnet_subnet[k].name
    }
  }
}
