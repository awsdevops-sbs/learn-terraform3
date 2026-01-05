

data "aws_security_group" "selected" {
  name = "Allow-all-from-public"
}


output "security_group" {

  value = data.aws_security_group.selected.name

}