resource "aws_instance" "example" {
  count = length(var.instance_name)
  ami           = var.ami_id
  instance_type = var.instance_name[count.index] == "database" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [local.security_group_id]

  tags = {
    Name = var.instance_name[count.index]
  }
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