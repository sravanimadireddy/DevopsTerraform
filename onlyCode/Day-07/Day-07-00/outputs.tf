output "public_ip_vpc1_instance" {
    description = "public Ip address of the Ec2 instance"
    value = aws_instance.example.public_ip
}