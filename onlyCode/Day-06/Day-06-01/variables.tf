variable "instance_type" {
    description = "instance_type"
    type = map(string)
    default = {
      "dev"  = "t2.micro"
      "test" = "t2.small"
      "prod" = "t2.medium"
    }
  
}