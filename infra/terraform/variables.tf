variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-sats-dataplatform-dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Southeast Asia"
}

variable "storage_account_name" {
  description = "Name of the Data Lake storage account"
  type        = string
  default     = "stsatspdev"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
