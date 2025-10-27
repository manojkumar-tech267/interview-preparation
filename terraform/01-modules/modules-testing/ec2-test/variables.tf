variable "sg_ids" {
    type = list 
    default = ["sg-06933f730773e2191"]
}

variable "tags" {
    type = map 
    default = {
        Name = "Roboshop-cart"
        Terraform = true
        Environment = "dev"
    }
}

variable "instance_type" {
    type = string 
    default = "t3.micro"
}