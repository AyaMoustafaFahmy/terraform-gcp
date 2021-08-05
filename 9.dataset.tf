resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset"
  location                    = "EU"

  access {
    role          = "OWNER"
    user_by_email = google_service_account.service_account.email
  }

  access {
    role   = "READER"
    domain = "hashicorp.com"
  }
}
