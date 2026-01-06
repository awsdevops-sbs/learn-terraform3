terraform {

  backend "s3" {

    bucket = "mybucket162977"
    key= "test/dev/state"
    region = "us-east-1"
  }

}