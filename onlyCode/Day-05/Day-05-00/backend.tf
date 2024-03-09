#before usinf this please create the s3 buckert and dynamodb to use this 
#to store terraform.tfstate file in s3 and lock file in dynamodb
terraform {
  backend "s3" {
    bucket = "omen-terraform-tfstate"
    key = "Day-05-00/terraform.tfstate"
    dynamodb_endpoint = "omen-terraform-lock"
    region = "us-east-1"
  }
}