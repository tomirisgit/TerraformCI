variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the storage account will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the storage account will be created."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account to be created."
}

variable "environment" {
  type        = string
  description = "The environment for the storage account, e.g., Production, Development."
  
}