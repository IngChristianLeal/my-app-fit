variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  default     = "us-central1"
}

variable "gke_cluster_name" {
  type        = string
  default     = "flask-gke-cluster"
}

variable "artifact_repo_name" {
  type        = string
  default     = "flask-artifact-repo"
}
