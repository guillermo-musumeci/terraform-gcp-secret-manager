#################################################
## Read Secret Data in Secret Manager - output ##
#################################################

# Read the secret data of local-admin-username
output "local-admin-username" {
  value = data.google_secret_manager_secret_version.local-admin-username.secret_data
}

# Read the secret data of local-admin-password
output "local-admin-password" {
  value = data.google_secret_manager_secret_version.local-admin-password.secret_data
}

# Read the secret data of domain-admin-username
output "domain-admin-username" {
  value = data.google_secret_manager_secret_version.domain-admin-username.secret_data
}

# Read the secret data of domain-admin-password
output "domain-admin-password" {
  value = data.google_secret_manager_secret_version.domain-admin-password.secret_data
}