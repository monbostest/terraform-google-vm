resource "google_compute_instance" "default" {
  name         = "test2"
  machine_type = var.machine_type
  zone         = "us-central1-a"

  tags = ["foo", "bar"]
  labels = {
    "test" = "yes"
  }
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  
}