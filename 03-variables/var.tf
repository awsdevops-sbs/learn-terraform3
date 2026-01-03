variable "x" {

  default = "10"
}

output "x" {
  value = var.x
}

variable "list" {

  default = [10,20,30]
}

output "list" {
  value = var.list[0]
}

variable "map" {
  default = {

    a=10,
    b=20,
    c=30
  }

}

output "map" {
  value = var.map["a"]
}