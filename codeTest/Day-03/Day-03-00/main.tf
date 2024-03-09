#Creating Ec2 instances using multiple regions using input variables,outputs,providers,vars in different file


resource "aws_instance" "instance_1"{
    #Ami differs region to region please be careful
    ami = var.ami_id_us-east-1
    instance_type = var.instance_type
    subnet_id = var.subnet_id_us-east-1
    #for provider value double quotes are not required
    provider = aws.us-east-1
    key_name = "terrafom_keypair"
    tags = {
    Name = "Day_03_us_east_1"
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
    Name = "Day_03_us_west_1"
  }
}