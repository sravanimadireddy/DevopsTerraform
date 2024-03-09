terraform {
  backend "s3" {
    bucket = "day04-2024"
    key = "Day-04-02/terraform.tfstate"
    region = "us-east-1"
  }
}