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

variable "sg_name" {
    type = string 
    default = "allow_all"
}

variable "sg_description" {
    type = string 
    default = "This security group allows all traffic from internet"
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "ingress_protocol" {
    default = "tcp"
}

variable "ingress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "ingress_ipv6_cidr_blocks" {
    default = ["::/0"]
}

variable "ingress_ports" {
    default = [
        {
            from_port = 22,
            to_port = 22
        },
        {
            from_port = 80,
            to_port = 80
        },
        {
            from_port = 443,
            to_port = 443
        },
        {
            from_port = 3306,
            to_port = 3306
        }
    ]
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