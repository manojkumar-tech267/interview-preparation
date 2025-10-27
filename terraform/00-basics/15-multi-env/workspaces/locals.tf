locals {
    common_tags = merge(
        {
            Project = var.project 
            Environment = terraform.workspace
            Terraform = true
        },
        {
            Name = "${var.project}-${terraform.workspace}"
        }
    )
    security_group_id = aws_security_group.roboshop.id
}