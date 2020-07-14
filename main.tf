provider "aws" {
  profile = "default"
  region  = var.region
}

module "test_instance" {
  source = "./modules/ec2/"
}

