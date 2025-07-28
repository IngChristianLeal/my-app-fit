resource "google_compute_network" "vpc_network" {
  name = "flask-vpc"
}

resource "google_container_cluster" "primary" {
  name     = var.gke_cluster_name
  location = var.region

  networking_mode = "VPC_NATIVE"
  remove_default_node_pool = true
  initial_node_count       = 1

  network = google_compute_network.vpc_network.id

  node_config {
    machine_type = "e2-small"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.region

  node_count = 1

  node_config {
    machine_type = "e2-small"
  }
}

resource "google_artifact_registry_repository" "docker_repo" {
  provider = google
  location = var.region
  repository_id = var.artifact_repo_name
  format = "DOCKER"
  description = "Docker repo for Flask App"
}
