terraform {
  backend "s3" {
    bucket = "mvashkevich"
    key    = "terraform/state"
    region = "us-east-1"
  }
}