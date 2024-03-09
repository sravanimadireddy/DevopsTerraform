terraform {
  backend "s3" {
    bucket = "terraform-b-end"
    key = "Day-04-07/terraform.tfstate"
    dynamodb_endpoint = "omen-terraform-lock"
    region = "us-east-1"
  }
}