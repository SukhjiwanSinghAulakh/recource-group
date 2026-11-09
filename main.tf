resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location

  tags = each.value.tags

  lifecycle {
    prevent_destroy = each.value.prevent_destroy
  }

  timeouts {
    create = each.value.timeouts.create
    read   = each.value.timeouts.read
    update = each.value.timeouts.update
    delete = each.value.timeouts.delete
  }
}
