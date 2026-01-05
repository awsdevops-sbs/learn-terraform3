variable "num" {}

output "num" {
  value = var.num > 10 ? "value is grater than 10" : "value is less than 10"
}