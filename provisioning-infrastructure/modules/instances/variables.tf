variable "zone" {
  default = "asia-southeast2-a"
}

variable "env" {
  default = "dev"
}

variable "operating_system" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "machine_types" {
  default = "n1-standard-1"
}

variable "disk_size" {
  default = 15
}

variable "disk_type" {
  default = "pd-standard"
  # default = "pd-balanced"
  # default = "pd-ssd"
  # default = "pd-extreme"
}

variable "preemptible_state" {
  default = true
}

variable "startup_script_custom" {
  default = "modules/instances/custom.sh"
}

variable "startup_script_docker" {
  default = "modules/instances/install_docker.sh"
}

variable "startup_script_jenkins" {
  default = "modules/instances/install_jenkins.sh"
}

variable "startup_script_master" {
  default = "modules/instances/install_docker.sh"
}

variable "startup_script_node" {
  default = "modules/instances/install_docker.sh"
}

variable "startup_script" {
  default = "modules/instances/startup_script.sh"
}

variable "gce_ssh_user" {
  default = "medival"
}

variable "gce_ssh_pub_key" {
  default = "modules/instances/auth/id_rsa.pub"
}