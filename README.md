# azure-testing
Testing for azure related requirements

|Test|Purpose|YML|
|---|---|---|
|test001|Hello World2|test001.yml|
|deploy-bicep-rg|Deploy a Resource Group using Bicep|deploy-bicep-rg.yml|
|deploy-terraform-rg|Deploy a Resource Group using Terraform|deploy-terraform-rg.yml|

## test001
This test runs a simple GitHub Workflow that simply outputs a Hello World message. It does not connect to any other sources or targets.

## deploy-bicep-rg
This test uses Azure bicep to deploy a Resource Group to a Subscription with Azure.

Based off this: https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-github-actions?tabs=CLI%2Copenid

## deploy-terraform-rg
This test uses Terraform to deploy a Resource Group to a Subscription with Azure.

Based off this: https://learn.microsoft.com/en-us/devops/deliver/iac-github-actions
