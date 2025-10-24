resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [local.security_group_id]
  tags = local.common_tags
}



resource "aws_security_group" "roboshop" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
        from_port = ingress.value["from_port"]
        to_port = ingress.value["to_port"]
        protocol = var.ingress_protocol
        cidr_blocks = var.ingress_cidr_blocks
        ipv6_cidr_blocks = var.ingress_ipv6_cidr_blocks
    }
    }

  dynamic "egress" {
    for_each = var.egress_ports
    content {
        from_port = egress.value["from_port"]
        to_port = egress.value["to_port"]
        protocol = var.egress_protocol 
        cidr_blocks = var.egress_cidr_blocks
        ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
    }
  }

  tags = local.common_tags
}