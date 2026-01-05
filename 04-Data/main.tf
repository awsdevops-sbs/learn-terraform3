variable "security_group" {}

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "security_group" {
  value = var.security_group.selected
}