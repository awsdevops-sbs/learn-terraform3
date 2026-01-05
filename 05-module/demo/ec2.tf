terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "demo" {

  ami = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type

  tags = {

    Name= var.name
  }
}


variable "instance_type" {}
variable "name" {}