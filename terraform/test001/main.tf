resource "azurerm_resource_group" "rgs" {
  for_each = { for my_rg in var.resource_groups : my_rg.name => my_rg }
  name     = format("%s-%s-%s", local.label, local.location_abbreviated, each.value.name)
  location = var.location

  tags = merge(local.tags, { "Deployment Date" = formatdate("YYYY-MM-DD hh:mm ZZZ", timestamp()) })
  lifecycle {
    ignore_changes = [tags["Deployment Date"]]
  }
}
