data "google_iam_policy" "admin" {
  binding {
    role = "roles/iam.serviceAccountUser"
    # compute.instanceAdmin

    members = ["allAuthenticatedUsers"]
  }
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.service_account.name
  policy_data        = data.google_iam_policy.admin.policy_data
}
