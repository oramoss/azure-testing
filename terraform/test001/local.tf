locals {
  location_abbreviated_map = {
    uksouth     = "uks"
    ukwest      = "ukw"
    northeurope = "neu"
#    westeurope  = "weu"
  }

  default_audience_name = "api://AzureADTokenExchange"
  github_issuer_url     = "https://token.actions.githubusercontent.com"
  label                 = var.environment
  location_abbreviated  = lookup(local.location_abbreviated_map, var.location, null)
  subscription_id       = var.subscription_id
  tags                  = merge(var.global_tags, var.environment_tags)
}
