#########################
## GCP Provider - Main ##
#########################

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project     = var.gcp_project_id
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}

provider "google-beta" {
  project     = var.gcp_project_id
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}
