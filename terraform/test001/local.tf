locals {
  default_audience_name = "api://AzureADTokenExchange"
  github_issuer_url     = "https://token.actions.githubusercontent.com"
  label                 = var.environment
  subscription_id       = var.subscription_id
  tags                  = merge(var.global_tags, var.environment_tags)
}
