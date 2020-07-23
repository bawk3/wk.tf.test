# EC2 security groups
resource "aws_security_group" "sg" {
  name        = "SSH"
  description = "Open inbound 22 port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH"
  }
}

