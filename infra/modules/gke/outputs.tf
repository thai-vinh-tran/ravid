output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "cluster_location" {
  value = google_container_cluster.primary.location
}

output "kubeconfig" {
  value = google_container_cluster.primary.endpoint
}