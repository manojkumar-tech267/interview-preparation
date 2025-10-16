variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "name" {
    default = "allow_tls"
}

variable "description" {
    default = "This security group allows all traffic from internet"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "protocol" {
    default = "-1"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
    default = ["::/0"]
}

variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}