terraform {

  backend "s3" {}


}

variable "env" {}

output "env" {
  value = var.env
}

variable "message" {}
output "message" {
  value = "Bucket example"
}

resource "null_resource" "test1" {}
resource "null_resource" "test2" {}