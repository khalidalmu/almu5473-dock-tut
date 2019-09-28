provider "google" {
  project = "zinc-advice-252200"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_compute_instance" "dock-tut" {
  name         = "dock-tut"
  machine_type = "f1-micro"
  zone         = "us-central1-c"
  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
