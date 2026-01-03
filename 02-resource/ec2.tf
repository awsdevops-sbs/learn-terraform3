terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "frontend_terraform" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

  tags = {
    Name = "frontend_terraform"

  }
}

resource "aws_instance" "backend_terraform" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

  tags = {
    Name = "backend_terraform"

  }
}
resource "aws_instance" "mysql_terraform" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

  tags = {
    Name = "mysql_terraform"

  }
}