terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "test" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["vpc-0d2850636350f0540"]

  tags = {
    name = "test VM1"

  }
}