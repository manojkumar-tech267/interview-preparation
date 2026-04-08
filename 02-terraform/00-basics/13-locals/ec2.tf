resource "aws_instance" "example" {
  for_each = toset(var.instances)
  ami           = local.ami_id
  instance_type = each.value == "database" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = local.vpc_sg_id

  tags = merge(
    {
    Name = "${each.key}-${var.environment}-${var.region}"
    Environment = var.environment
    Terraform = true
  },
  {
    Topic = "locals"
    Description = "This improves Readability"
  })
}


resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
    from_port        = ingress.value["from_port"]
    to_port          = ingress.value["to_port"]
    protocol         = var.ingress_protocol
    cidr_blocks      = var.ingress_cidr_blocks
    ipv6_cidr_blocks = var.ingress_ipv6_cidr_blocks
    }
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = var.egress_cidr_blocks
    ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  }

  tags = local.sg_tags
}