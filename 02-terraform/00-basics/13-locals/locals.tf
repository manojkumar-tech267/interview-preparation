locals {
    ami_id = data.aws_ami.roboshop.id
    vpc_sg_id = [aws_security_group.allow_all.id]
    sg_tags = merge({
        Name = "allow-all-terraform"
        Terraform = true
    },
    {
        Project = var.project
    })
}