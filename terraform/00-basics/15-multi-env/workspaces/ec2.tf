resource "aws_instance" "example" {
  count = length(var.instance_names)
  ami           = data.aws_ami.roboshop.id
  instance_type = lookup(var.instance_type,terraform.workspace,"t3.micro")
  vpc_security_group_ids = [local.security_group_id]

  tags = {
    Name = "${var.project}-${var.instance_names[count.index]}"
    Component = var.instance_names[count.index]
    Environment = terraform.workspace
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