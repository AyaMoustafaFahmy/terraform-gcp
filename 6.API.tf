resource "google_project_service" "project" {
  project = "nti-project-321407"
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}