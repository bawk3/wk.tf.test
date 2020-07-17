# instance vars
variable "ami" {}

variable "instance_type" {
  default = "t2.micro"
}

# provisioner connection vars
variable "conn_type" {
  default = "ssh"
}

variable "conn_user" {
  default = "ec2-user"
}

# assets
variable "sample_file" {
  default = "assets/sample_file.txt"
}

# SSH keys
variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key" {
  default = "~/.ssh/id_rsa"
}