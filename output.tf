output "resource_group_details" {
  description = "Complete resource group details"

  value = {
    for key, rg in azurerm_resource_group.rg : key => {
      id       = rg.id
      name     = rg.name
      location = rg.location
      tags     = rg.tags
    }
  }
}

output "resource_group_ids" {
  value = {
    for key, rg in azurerm_resource_group.rg : key => rg.id
  }
}
