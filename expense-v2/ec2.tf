terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "expense" {

  for_each = var.instance_types
  ami = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.security_groups

  tags = {

    Name = each.key

  }

}

variable "ami" {

  default = "ami-09c813fb71547fc4f"
}


# vpc_security_group_ids = ["sg-0262c4232ab2a8184"]

variable "security_groups" {

  default = "sg-0262c4232ab2a8184"
}

variable "instance_types" {

  default = {

    froentend_terraform = {

      instance_type = "t3.small"
    }

    backend_terraform = {

      instance_type = "t3.small"
    }

    mysql_terraform = {

      instance_type = "t3.medium"
    }



  }


}