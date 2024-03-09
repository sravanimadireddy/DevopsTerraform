output "public_ip_east" {
    description = "public Ip address of the Ec2 instance"
    value = aws_instance.instance_1.public_ip
}

output "public_ip_west" {
    description = "public Ip address of the Ec2 instance"
    value = aws_instance.instance_2.public_ip
}