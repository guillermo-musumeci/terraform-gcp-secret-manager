#############################################
## Create Secrets in Secret Manager - Main ##
#############################################

# Create a secret for local-admin-username
resource "google_secret_manager_secret" "domain-admin-username" {
  provider = google-beta

  secret_id   = "domain-admin-username"

  replication {
    user_managed {
      replicas {
        location = "europe-west1"
      }
      replicas {
        location = "europe-west4"
      }
    }
  }
}

# Add the secret data for local-admin-username secret
resource "google_secret_manager_secret_version" "domain-admin-username" {
  secret = google_secret_manager_secret.domain-admin-username.id
  secret_data = "kopiadmin"
}

# Create a secret for local-admin-password
resource "google_secret_manager_secret" "domain-admin-password" {
  provider = google-beta

  secret_id   = "domain-admin-password"

  replication {
    user_managed {
      replicas {
        location = "europe-west1"
      }
      replicas {
        location = "europe-west4"
      }
    }
  }
}

# Add the secret data for local-admin-password secret
resource "google_secret_manager_secret_version" "domain-admin-password" {
  secret = google_secret_manager_secret.domain-admin-password.id
  secret_data = "Sup3rS3cur3P@ssw0rd3"
}