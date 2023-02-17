
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.30.0"
    }
  }
}

provider "google" {
  project = "terracloud-377520"
  region  = "europe-west3"
  zone = "europe-west3-a"
  credentials = file("gcp_single.json")

}
