provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = var.instance_type
    subnet_id = "subnet-0cb4bd056821bc9f1"
    key_name = "terrafom_keypair"
}

resource "aws_instance" "example-1" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = var.instance_type
    subnet_id = "subnet-0cb4bd056821bc9f1"
    key_name = "terrafom_keypair"
    
}