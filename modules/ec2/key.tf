resource "aws_key_pair" "mvashkevich" {
  key_name   = "mvashkevich_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

