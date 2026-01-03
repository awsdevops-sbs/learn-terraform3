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
  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

  tags = {
    name = "test_VM2"

  }
}