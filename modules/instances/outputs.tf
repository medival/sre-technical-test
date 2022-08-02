# Jenkins Master Output
output "jenkins-node-master" {
  value = google_compute_instance.jenkins-node-master.name
}

output "jenkins-node-master-external-ip" {
  value = google_compute_instance.jenkins-node-master.network_interface.0.access_config.0.nat_ip
}

output "jenkins-node-master-internal-ip" {
  value = google_compute_instance.jenkins-node-master.network_interface.0.network_ip
}

# Jenkins Node 1
output "jenkins-node-1" {
  value = google_compute_instance.jenkins-node-1.name
}

output "jenkins-node-1-external-ip" {
  value = google_compute_instance.jenkins-node-1.network_interface.0.access_config.0.nat_ip
}

output "jenkins-node-1-internal-ip" {
  value = google_compute_instance.jenkins-node-1.network_interface.0.network_ip
}

# Jenkins Node 2
output "jenkins-node-2" {
  value = google_compute_instance.jenkins-node-2.name
}

output "jenkins-node-2-external-ip" {
  value = google_compute_instance.jenkins-node-2.network_interface.0.access_config.0.nat_ip
}

output "jenkins-node-2-internal-ip" {
  value = google_compute_instance.jenkins-node-2.network_interface.0.network_ip
}