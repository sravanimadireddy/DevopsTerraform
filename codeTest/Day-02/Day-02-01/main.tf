#Creating Ec2 instances using multiple regions using input variables in same file

provider "aws"{
    alias = "us-east-1"
    region = "us-east-1"

}
provider "aws"{
    alias = "us-west-1"
    region = "us-west-1"
}

variable "instance_type" {
    description = "Ec2 instnce type"
    type = string
    default = "t2.micro"

}

variable "ami_id_us-east-1" {
    description = "Ec2 ami in us-east-1"
    type = string
    default = "ami-07d9b9ddc6cd8dd30"

}

variable "ami_id_us-west-1" {
    description = "Ec2 ami id in us-west-1"
    type = string
    default = "ami-0a0409af1cb831414"

}

variable "subnet_id_us-east-1" {
    description = "Ec2 ami id in us-west-1"
    type = string
    default = "subnet-0cb4bd056821bc9f1"

}

variable "subnet_id_us-west-1" {
    description = "Ec2 ami id in us-west-1"
    type = string
    default = "subnet-06475bafe47c645d8"

}

resource "aws_instance" "instance_1"{
    #Ami differs region to region please be careful
    ami = var.ami_id_us-east-1
    instance_type = var.instance_type
    subnet_id = var.subnet_id_us-east-1
    #for provider value double quotes are not required
    provider = aws.us-east-1
    key_name = "terrafom_keypair"
    tags = {
    Name = "Day_02_us_east_1"
  }
}

resource "aws_instance" "instance_2"{
    #Ami differs region to region please be careful
    ami = var.ami_id_us-west-1
    instance_type = var.instance_type
    subnet_id = var.subnet_id_us-west-1
    #for provider value double quotes are not required
    provider = aws.us-west-1
    key_name = "terrafom_keypair"
    tags = {
    Name = "Day_02_us_west_1"
  }
}

output "public_ip_east" {
    description = "public Ip address of the Ec2 instance"
    value = aws_instance.instance_1.public_ip
}

output "public_ip_west" {
    description = "public Ip address of the Ec2 instance"
    value = aws_instance.instance_2.public_ip
}