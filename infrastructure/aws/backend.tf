# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-carlos-072163000909"
    key    = "state/igti/edc/mod1/desafio_final_v2/terraform.tfstate"
    region = "us-east-2"
  }
}
