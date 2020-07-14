resource "aws_instance" "sample_instance" {
    ami             = var.ami
    instance_type   = "t2.micro"
    security_groups = [aws_security_group.ssh.name]
    key_name        = aws_key_pair.mvashkevich.key_name

    tags = {
        Name = "SAMPLE_INSTANCE"
    }

    connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = self.public_ip
    private_key = file("~/.ssh/id_rsa")

    }

    provisioner "file" {
    source      = "assets/sample_file.txt"
    destination = "~/sample_file.txt"
    }

    provisioner "remote-exec" {
    inline = ["cat ~/sample_file.txt"]
    }
}