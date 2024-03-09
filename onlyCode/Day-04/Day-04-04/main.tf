#practicing for securing the statefile in s3 bucket


provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "S3_bucket" {
    bucket = "terraform-b-end-1" 
}