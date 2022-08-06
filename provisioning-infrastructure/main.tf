terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.55.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}


module "instances" {
  source     = "./modules/instances"
}

module "network" {
  source     = "./modules/network"
}

# Jenkins Master Output
output "jenkins-node-master-external-ip" {
  value = module.instances.jenkins-node-master-external-ip
}

output "jenkins-node-master-internal-ip" {
  value = module.instances.jenkins-node-master-internal-ip
}

output "jenkins-node-1-external-ip" {
  value = module.instances.jenkins-node-1-external-ip
}

output "jenkins-node-1-internal-ip" {
  value = module.instances.jenkins-node-1-internal-ip
}

output "jenkins-node-2-external-ip" {
  value = module.instances.jenkins-node-2-external-ip
}

output "jenkins-node-2-internal-ip" {
  value = module.instances.jenkins-node-2-internal-ip
}