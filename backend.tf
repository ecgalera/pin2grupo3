terraform {
  backend "s3" {
    bucket = "ecg-terraform-backend"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_locks"
    encrypt = true
  }
}