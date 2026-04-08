locals {
    ami_id = data.aws_ami.roboshop.id
    sg_id = [aws_security_group.allow_all.id]
    sg_tags = {
    Name = "allow-all-terraform"
    Terraform = true
  }
}