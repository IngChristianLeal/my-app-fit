output "gke_cluster_name" {
  value = google_container_cluster.primary.name
}

output "gke_cluster_location" {
  value = google_container_cluster.primary.location
}

output "artifact_repo_url" {
  value = google_artifact_registry_repository.docker_repo.repository_id
}
