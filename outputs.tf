output "storange_account_id" {
  value       = azurerm_storage_account.securestorage.id
  description = "The ID of the Azure Storage Account created for remote state storage."
}