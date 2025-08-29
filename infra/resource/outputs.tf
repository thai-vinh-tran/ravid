output "cluster_name" {
  value = module.gke.cluster_name
}

output "cluster_endpoint" {
  value = module.gke.cluster_endpoint
}

output "kubeconfig" {
  value = module.gke.kubeconfig
}

output "node_pools" {
  value = module.gke.node_pools
}