terraform {
  required_version = "~> 1.9.5"
  backend "s3" {
    bucket = "gitops-tf-backend-mysycry"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
    dynamodb_table = "GitopsTerraformLocks-mysycry"
  }
}