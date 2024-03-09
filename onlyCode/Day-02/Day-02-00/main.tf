#Creating Ec2 instances using multiple regions

provider "aws"{
    alias = "us-east-1"
    region = "us-east-1"

}
provider "aws"{
    alias = "us-west-1"
    region = "us-west-1"
}
resource "aws_instance" "instance_1"{
    #Ami differs region to region please be careful
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"
    subnet_id = "subnet-0cb4bd056821bc9f1"
    #for provider value double quotes are not required
    provider = aws.us-east-1
    key_name = "terrafom_keypair"
    tags = {
    Name = "in_us_east_1"
  }
}

resource "aws_instance" "instance_2"{
    #Ami differs region to region please be careful
    ami = "ami-0a0409af1cb831414"
    instance_type = "t2.micro"
    subnet_id = "subnet-06475bafe47c645d8"
    #for provider value double quotes are not required
    provider = aws.us-west-1
    key_name = "terrafom_keypair"
    tags = {
    Name = "in_us_west_1"
  }
}