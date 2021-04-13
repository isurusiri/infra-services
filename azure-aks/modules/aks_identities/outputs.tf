# Cluster identity
output "cluster_client_id" {
  value       = "azuread_service_principal.cluster_sp.application_id"
}

output "cluster_sp_secret" {
  value       = "random_string.cluster_sp_password.result"
  sensitive   = true
}
