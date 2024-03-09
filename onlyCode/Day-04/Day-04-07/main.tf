provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "S3_bucket" {
    bucket = "terraform-b-end-2" 
}