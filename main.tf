provider "aws" {
  profile = var.profile
  region  = var.region
}

module "sg_ssh" {
  source = "./modules/sg"

  #sg_id = var.sg_id
}

module "test_instance" {
  source = "./modules/ec2/"

  counter = var.counter

  ami = var.ami
  instance_type = var.instance_type

  ec2-security_group_ids = module.sg_ssh.id

  conn_type = var.conn_type
  conn_user = var.conn_user
  ssh_private_key = var.ssh_private_key
  ssh_public_key = var.ssh_public_key

  sample_file = var.sample_file
}