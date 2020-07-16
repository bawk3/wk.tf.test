resource "aws_instance" "sample_instance" {
    ami             = var.ami
    instance_type   = var.instance_type
    security_groups = [aws_security_group.ssh.name]
    key_name        = aws_key_pair.mvashkevich.key_name

    tags = {
        Name = "SAMPLE_INSTANCE"
    }

    connection {
    type        = var.conn_type
    user        = var.conn_user
    host        = self.public_ip
    private_key = file(var.ssh_private_key)

    }

    provisioner "file" {
    source      = var.sample_file
    destination = "~/sample_file.txt"
    }

    provisioner "remote-exec" {
    inline = ["cat ~/sample_file.txt"]
    }
}