variable "fun" {
  default = "ABCDEF"
}

output "fun" {
  value = lower(var.fun)
}