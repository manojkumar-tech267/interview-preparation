variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "prod"
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "name" {
    default = "allow_tls"
}

variable "description" {
    default = "This security group allows all traffic from internet"
}

variable "from_port" {
    default =0
}

variable "to_port" {
    default =0
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