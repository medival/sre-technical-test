variable "project_id" {
  description = "The project ID of your project"
  default     = "submission-adi-purnomo"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "metaverse"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "asia-southeast2"
}
variable "zones" {
  description = "Cluster zone"
  default     = "asia-southeast2-a"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  # default     = "gke-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  # default     = "gke-subnet"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

variable "service-account-id" {
  description = "The ID of service account of GCP"
  default     = "serviceaccount-id"
}
variable "cpus" {
  description = "Number of cpus"
  default     = "2"
}

variable "minnode" {
  description = "Minimum number of node pool"
  default     = 1
}
variable "maxnode" {
  description = "Maximum number of node pool"
  default     = 2
}

variable "disksize" {
  description = "Disk Size in GB"
  default     = 15
}