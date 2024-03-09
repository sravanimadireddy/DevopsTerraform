provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "S3_bucket" {
    bucket = "day04-2024" 
}


resource "aws_dynamodb_table" "terraform_lock" {
    name = "omen-terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "s"
    }
}
