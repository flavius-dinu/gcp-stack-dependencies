provider "google" {
  project     = "brave-wave-380907"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = var.credentials
}

module "kubernetes-engine_example_simple_autopilot_public" {
  source  = "terraform-google-modules/kubernetes-engine/google//examples/simple_autopilot_public"
  version = "25.0.0"

  project_id = "brave-wave-380907"
}
