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
    #default = "t2.micro"
}

variable "sg_name" {
    type = string 
    #default = "allow_tls"
}

variable "sg_description" {
    type = string 
    default = "This security group allows all traffic from internet"
}

# ingress rules 
variable "ingress_from_port" {
    type = number 
    default = 0
}

variable "ingress_to_port" {
    type = number 
    default = 0
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
variable "egress_from_port" {
    type = number 
    default = 0
}

variable "egress_to_port" {
    type = number 
    default = 0
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