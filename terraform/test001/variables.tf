variable "environment" {
  description = "Name of the environment"
  type        = string
}

variable "environment_tags" {
  description = "Environment specific tags which are merged into resource tags"
  type        = map(string)
  default     = {}
}

variable "global_tags" {
  description = "Default tags which are merged into resource tags"
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "Environment Resource Locations e.g. uksouth, ukwest"
}

variable "resource_groups" {
  description = "List of resource names to create."
  type        = any
  default     = []
}

variable "subscription_id" {
  description = "ID of the target Subscription"
  type        = string
}

