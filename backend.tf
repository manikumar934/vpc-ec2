terraform {
  backend "s3" {
    bucket         = "mani-terraform-state-2026"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}