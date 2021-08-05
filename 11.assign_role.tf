data "google_iam_policy" "admin" {
  binding {
    role = "roles/compute.instanceAdmin"
    members = [
      "user:aya.moustafa.fahmy@gmail.com",
    ]  
  }
}

resource "google_compute_instance_iam_policy" "policy" {
  project = google_compute_instance.public_vm.project
  zone = google_compute_instance.public_vm.zone
  instance_name = google_compute_instance.public_vm.name
  policy_data = data.google_iam_policy.admin.policy_data
}

# resource "google_service_account_iam_policy" "admin-account-iam" {
#   service_account_id = google_service_account.service_account.name
#   policy_data        = data.google_iam_policy.admin.policy_data
# }
