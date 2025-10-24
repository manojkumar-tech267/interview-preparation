variable "project" {
    type = string 
    default = "roboshop"
}

variable "environment" {
    type = string 
    default = "dev"
}

variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string 
    default = "t2.micro"
}

variable "sg_name" {
    type = string 
    default = "allow_tls"
}

variable "sg_description" {
    type = string 
    default = "This security group allows all traffic from internet"
}

# ingress rules
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
            from_port = 80
            to_port = 80
        }
    ]
}

variable "ingress_protocol" {
    type = string 
    default = "-1"
}

variable "ingress_cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "ingress_ipv6_cidr_blocks" {
    type = list(string)
    default = ["::/0"]
}

# egress rules 
variable "egress_ports" {
    default = [
        {
            from_port = 443
            to_port = 443
        },
        {
            from_port = 80
            to_port = 80
        },
        {
            from_port = 22
            to_port = 22
        }
    ]
}

variable "egress_protocol" {
    type = string 
    default = "-1"
}

variable "egress_cidr_blocks" {
    type = list(string) 
    default = ["0.0.0.0/0"]
}

variable "egress_ipv6_cidr_blocks" {
    type = list(string)
    default = ["::/0"]
}