resource "google_storage_bucket" "gcp-bucket" {
  name          = "gcp-terraform-111"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}