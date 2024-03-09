terraform {
  backend "s3" {
    bucket = "terraform-b-end"
    key = "Day-04-05/terraform.tfstate"
    region = "us-east-1"
  }
}