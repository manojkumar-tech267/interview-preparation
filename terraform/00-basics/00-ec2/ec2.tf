resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop.id]
  tags = {
    Name = "HelloWorld"
  }
}



resource "aws_security_group" "roboshop" {
  name        = "allow_tls"
  description = "This security group allows all traffic from internet"
  #vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}