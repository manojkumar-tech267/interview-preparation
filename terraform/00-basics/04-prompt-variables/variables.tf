variable "project" {
    default  = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
}

variable "name" {
    default = "allow_tls"
}

variable "description" {
    type = string
}

variable "from_port" {
    default = 0
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