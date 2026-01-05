terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
# resource "null_resource" "test" {
#
#   count =10
# }

resource "null_resource" "test2" {

  for_each = var.colors
}

variable "colors" {

  default = {

    31 = red
    32 = yellow
    33 = purple
    34 = white

  }

}