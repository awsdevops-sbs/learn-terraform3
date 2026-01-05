module "demo1" {
  source = "./demo"
  name = "demo1"
  instance_type = "t3.small"
}

module "demo2" {
  source = "./demo"
  name= "demo2"
  instance_type = "t3.micro"
}