resource "aws_key_pair" "key1" {
  key_name   = "omen-terraform-keypair"  # Replace with your desired key name
  public_key = file("~/.ssh/id_rsa.pub")  # Replace with the path to your public key file
}

resource "aws_instance" "example" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
    subnet_id = "subnet-0cb4bd056821bc9f1"
    key_name = aws_key_pair.key1.key_name
}