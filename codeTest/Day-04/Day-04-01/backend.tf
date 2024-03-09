terraform {
  backend "s3" {
    bucket = "day04-2024"
    key = "Day-04-01/terraform.tfstate"
    region = "us-east-1"
  }
}