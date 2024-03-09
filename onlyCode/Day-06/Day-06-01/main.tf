provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
    subnet_id = "subnet-0cb4bd056821bc9f1"
    key_name = "terrafom_keypair"
}
