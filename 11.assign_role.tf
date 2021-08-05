data "google_iam_policy" "admin" {
  binding {
    role = "roles/compute.instanceAdmin"

    members = [
      "user:jane@example.com",
    ]
  }
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.service_account.name
  policy_data        = data.google_iam_policy.admin.policy_data
}
