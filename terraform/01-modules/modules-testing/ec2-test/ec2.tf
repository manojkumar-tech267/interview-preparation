module "aws_ec2" {
    source = "../../modules/ec2"
    sg_ids = var.sg_ids
    tags = var.tags
}