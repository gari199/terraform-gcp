# main.tf

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network

    access_config {
      // Ephemeral IP
    }
  }

  tags = var.tags

  metadata = {
    ssh-keys = var.ssh_user + ":" + var.ssh_key
  }
}