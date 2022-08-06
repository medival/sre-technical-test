resource "google_compute_instance" "jenkins-node-master" {
  name         = "jenkins-node-master"
  machine_type = var.machine_types
  zone         = var.zone
  tags         = ["ssh","http","https","allow-8080"]
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.operating_system
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  scheduling {
    preemptible         = var.preemptible_state
    automatic_restart   = false
  }
  
  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key)}"
  }

  metadata_startup_script = file(var.startup_script_custom)

  network_interface {
    network       = "default"
    # subnetwork    = google_compute_subnetwork.network_subnet.name
    access_config { }
  }
}

resource "google_compute_instance" "jenkins-node-1" {
  name         = "jenkins-node-1"
  machine_type = var.machine_types
  zone         = var.zone
  tags         = ["ssh","http","https","allow-8080"]

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image     = var.operating_system
      size      = var.disk_size
      type      = var.disk_type
    }
  }

  scheduling {
    preemptible         = var.preemptible_state
    automatic_restart   = false
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key)}"
  }

  metadata_startup_script = file(var.startup_script_docker)

  network_interface {
    network       = "default"
    # subnetwork    = google_compute_subnetwork.network_subnet.name
    access_config { }
  }

}

resource "google_compute_instance" "jenkins-node-2" {
  name         = "jenkins-node-2"
  machine_type = var.machine_types
  zone         = var.zone
  tags         = ["ssh","http","https","allow-8080"]

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.operating_system
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  scheduling {
    preemptible         = var.preemptible_state
    automatic_restart   = false
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key)}"
  }
  
  metadata_startup_script = file(var.startup_script_docker)

  network_interface {
    network       = "default"
    # subnetwork    = google_compute_subnetwork.network_subnet.name
    access_config { }
  }

}