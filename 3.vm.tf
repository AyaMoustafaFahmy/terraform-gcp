resource "google_compute_instance" "public_vm" {
  name         = "public_vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      size  = 10
      type  = "pd-standard"
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork =google_compute_subnetwork.subnet_1.name
    network_ip = "10.0.1.1"

  }
}


resource "google_compute_instance" "private_vm" {
  name         = "public_vm"
  machine_type = "e2-micro"
  zone         = "eu-west-1"

  boot_disk {
    initialize_params {
      size  = 10
      type  = "pd-standard"
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network =  google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet_1.name
    network_ip = "10.0.2.1"

  }
}