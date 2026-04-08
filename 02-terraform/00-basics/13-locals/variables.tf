variable "project" {
    default = "Roboshop"
}

variable "environment" {
    default = "dev"
}

variable "instances" {
    default = ["database","frontend","backend","catalogue","cart"]
}

variable "region" {
    default = "us-east-1"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "This security group allows all traffic from internet"
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "ingress_ports" {
    default = [
        {
            from_port = 22
            to_port = 22
        },
        {
            from_port = 443
            to_port = 443
        },
        {
            from_port = 3306
            to_port = 3306
        },
        {
            from_port = 80
            to_port = 80
        }
    ]
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


variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "egress_protocol" {
    default = "tcp"
}

variable "egress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "egress_ipv6_cidr_blocks" {
    default = ["::/0"]
}