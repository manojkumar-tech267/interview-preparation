variable "project" {
    type = string 
    default = "Roboshop"
}

variable "environment" {
    type = string 
    default = "dev"
}

variable "ami_id" {
    type = string 
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string 
    default = "t3.micro"
}

variable "region" {
    default = "us-east-1"
}

variable "instance_name" {
    default = "Catalogue"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "This security group allows all traffic from the internet"
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "ingress_protocol" {
    default = "-1"
}

variable "ingress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "ingress_ipv6_cidr_blocks" {
    default = ["::/0"]
}



variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "egress_protocol" {
    default = "-1"
}

variable "egress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "egress_ipv6_cidr_blocks" {
    default = ["::/0"]
}