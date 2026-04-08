resource "aws_instance" "roboshop" {
  count = length(var.instances)  
  ami           = var.ami_id
  instance_type = var.instances[count.index] == "database" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = merge(
    {
        Name = "${var.instances[count.index]}-${var.environment}-${var.region}"
        Environment = var.environment
        Terraform = true
  },
  {
    Topic = "Terraform Functions"
    SubTopics = "upper,lower,merge"
  }
  )
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

  tags = {
    Name = "allow-all-terraform"
    Terraform = true
  }
}