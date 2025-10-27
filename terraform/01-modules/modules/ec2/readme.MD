# AWS EC2 instance
You can create EC2 instance in roboshop using this module 

## inputs

* ami_id (optional) - AMI ID that need to be used by instance. Default is devops-practice i.e ami-09c813fb71547fc4f
* instance_type (optional) - Instance type to be used by instance. Valid values are t3.micro, t3.small, t3.medium, t2.micro. default is t2.micro
* sg_ids (Required) - A List of Security group ids attach to the instance
* tags (Required) - A map of tags to be associated with the instance

## outputs 
* public_ip - public IP of instance created
* private_ip - private IP of instance created
* instance_id - instance ID of instance