terraform {
  backend "s3" {
    bucket         = "mani-state-2026"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}