variable "security_group" {}

data "aws_security_group" "selected" {
  name = "Allow-all-from-public"
}

output "security_group" {
  value = var.aws_security_group.selected
}