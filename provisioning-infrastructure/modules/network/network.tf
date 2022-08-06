#allow http
resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = "${var.network}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"] 
}

# allow https
resource "google_compute_firewall" "allow-https" {
  name    = "allow-https"
  network = "${var.network}"
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["https"] 
}

# allow ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = "${var.network}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["ssh"]
}

# allow 8080
resource "google_compute_firewall" "allow-8080" {
  name    = "allow-8080"
  network = "${var.network}"
  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["allow-8080"]
}
