locals {
    common_tags = merge(
        {
            Project = var.project,
            Environment = var.environment,
            Terraform = true
        },
        {
            Name = "${var.project}-${var.environment}"
        }
    )
    security_group_id = aws_security_group.roboshop.id
}