resource "azurerm_virtual_network" "virtual_network" {

  name                    = var.name                    #(Required) The name of the virtual network. Changing this forces a new resource to be created.
  resource_group_name     = var.resource_group_name     #(Required) The name of the resource group in which to create the virtual network.
  address_space           = var.address_space           #(Required) The address space that is used the virtual network. You can supply more than one address space.
  location                = var.location                #(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created.
  bgp_community           = var.bgp_community           #(Optional) The BGP community attribute in format <as-number>:<community-value>.
  dns_servers             = var.dns_servers             #(Optional) List of IP addresses of DNS servers
  edge_zone               = var.edge_zone               #(Optional) Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
  flow_timeout_in_minutes = var.flow_timeout_in_minutes #(Optional) The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes.
  subnet                  = var.subnet                  #(Optional) Can be specified multiple times to define multiple subnets. Each subnet block supports fields documented below.
  tags                    = var.tags                    #(Optional) A mapping of tags to assign to the resource.

     
  dynamic "ddos_protection_plan" {                      #(Optional) A ddos_protection_plan block as documented below.
    # for_each = var.ddos_protection_plan != null ? [var.ddos_protection_plan] : []
    for_each = var.ddos_protection_plan == null ? {} : var.ddos_protection_plan

    content {
      enable = ddos_protection_plan.value.enable
      id     = ddos_protection_plan.value.id
    }
  }

}
