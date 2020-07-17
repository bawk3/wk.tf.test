provider "aws" {
  profile = var.profile
  region  = var.region
}

module "test_instance" {
  source = "./modules/ec2/"

  counter = var.counter

  ami = var.ami
  instance_type = var.instance_type

  conn_type = var.conn_type
  conn_user = var.conn_user
  ssh_private_key = var.ssh_private_key
  ssh_public_key = var.ssh_public_key

  sample_file = var.sample_file
}

