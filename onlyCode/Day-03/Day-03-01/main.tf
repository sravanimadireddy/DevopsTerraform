# Here we are using module method by taking the variables from the module and provide the values according to your requirement to create resources.
module "Ec2_instance" {
    source = "/workspaces/DevopsTerraform/TerraformCode/myModules/Ec2_instance"
    #the below values can change according to our requirement
    instance_type = "t2.micro"
    ami_id_us-east-1 = "ami-07d9b9ddc6cd8dd30"
    ami_id_us-west-1 = "ami-0a0409af1cb831414"
    subnet_id_us-east-1 = "subnet-0cb4bd056821bc9f1"
    subnet_id_us-west-1 = "subnet-06475bafe47c645d8"
}