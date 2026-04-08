resource "aws_instance" "example" {
  count = length(var.instances)  
  ami           = data.aws_ami.roboshop.id
  instance_type = var.instances[count.index] == "database" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = var.instances[count.index]
    Environment = var.environment
    Terraform = true
  }
}


resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

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

  tags = {
    Name = "allow-all-terraform"
    Terraform = true
  }
}