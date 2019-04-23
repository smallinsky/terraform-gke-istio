resource "google_container_cluster" "istio_cluster" {
  name     = "${var.gce_cluster_name}"
  zone = "${var.gce_region}"
  project = "${var.gce_project}"

  provider = "google-beta"

  initial_node_count = 1

  addons_config {
    istio_config {
      disabled = false
      auth = "AUTH_MUTUAL_TLS"
    }
  }
}
