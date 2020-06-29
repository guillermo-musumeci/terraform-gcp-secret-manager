#############################################
## Create Secrets in Secret Manager - Main ##
#############################################

# Create a secret for local-admin-username
resource "google_secret_manager_secret" "local-admin-username" {
  provider = google-beta

  secret_id   = "local-admin-username"

  replication {
    automatic = true
  }
}

# Add the secret data for local-admin-username secret
resource "google_secret_manager_secret_version" "local-admin-username" {
  secret = google_secret_manager_secret.local-admin-username.id
  secret_data = "kopiadmin"
}

# Create a secret for local-admin-password
resource "google_secret_manager_secret" "local-admin-password" {
  provider = google-beta

  secret_id   = "local-admin-password"

  replication {
    automatic = true
  }
}

# Add the secret data for local-admin-password secret
resource "google_secret_manager_secret_version" "local-admin-password" {
  secret = google_secret_manager_secret.local-admin-password.id
  secret_data = "Sup3rS3cur3P@ssw0rd3"
}