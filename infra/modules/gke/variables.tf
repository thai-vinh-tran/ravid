variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "location" {
  description = "The location (region or zone) for the GKE cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the GKE cluster"
  type        = number
}

variable "node_machine_type" {
  description = "The machine type for the nodes in the GKE cluster"
  type        = string
  default     = "e2-medium"
}

variable "network" {
  description = "The name of the VPC network to use for the GKE cluster"
  type        = string
}

variable "subnetwork" {
  description = "The name of the subnetwork to use for the GKE cluster"
  type        = string
}