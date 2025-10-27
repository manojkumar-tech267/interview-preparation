resource "aws_instance" "example" {
  ami           = data.aws_ami.roboshop.id
  instance_type = var.instance_type
  vpc_security_group_ids = [local.security_group_id]

  connection {
    type = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx"
    ]
  }

  tags = local.common_tags
}



resource "aws_security_group" "roboshop" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.ingress_protocol
    cidr_blocks      = var.ingress_cidr_blocks
    ipv6_cidr_blocks = var.ingress_ipv6_cidr_blocks
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = var.egress_cidr_blocks
    ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  }

  tags = local.common_tags
}