###############################################
## Read Secret Data in Secret Manager - Main ##
###############################################

# Read the secret data of local-admin-username
data "google_secret_manager_secret_version" "local-admin-username" {
  provider = google-beta
  secret   = "local-admin-username"
  version  = "1"
}

# Read the secret data of local-admin-password
data "google_secret_manager_secret_version" "local-admin-password" {
  provider = google-beta
  secret   = "local-admin-password"
  version  = "1"
}

# Read the secret data of domain-admin-username
data "google_secret_manager_secret_version" "domain-admin-username" {
  provider = google-beta
  secret   = "local-admin-username"
}

# Read the secret data of domain-admin-password
data "google_secret_manager_secret_version" "domain-admin-password" {
  provider = google-beta
  secret   = "domain-admin-password"
}