variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of the EC2 instance"
}

variable "instance_type" {
    type = string 
    default = "t2.micro"
    description = "Size of instance"

    validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium","t2.micro"], var.instance_type)
    error_message = "The valid values for instance type are t3.micro, t3.small, t3.medium, t2.micro"
  }
}

# mandatory
variable "sg_ids" {
    type = list
}

# mandatory
variable "tags" {
    type = map
}