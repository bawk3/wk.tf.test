counter = 1

region = "us-east-1"
profile = "default"

ami = "ami-08f3d892de259504d"
instance_type = "t2.micro"

conn_type = "ssh"
conn_user = "ec2-user"

sample_file = "assets/sample_file.txt"

ssh_public_key  = "~/.ssh/id_rsa.pub"
ssh_private_key = "~/.ssh/id_rsa"