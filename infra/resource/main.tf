# filepath: /terraform-gke-gcs/terraform-gke-gcs/main.tf

provider "google" {
  credentials = file("${path.module}/../service-account.json")
  project     = var.project_id
  region      = var.region
}

module "gke" {
  source            = "${path.module}/modules/gke"
  cluster_name      = var.cluster_name
  location          = var.location
  node_count        = var.node_count
  node_machine_type = var.node_machine_type
  network           = var.network
  subnetwork        = var.subnetwork
}

output "kubeconfig" {
  value = module.gke.kubeconfig
}

output "endpoint" {
  value = module.gke.endpoint
}