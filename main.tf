provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "one" {
count = 5 
ami = "ami-0166fe664262f664c"
instance_type = "t2.medium"
key_name = "mamathakp"
vpc_security_group_ids = "sg-02768082ea8db393e"
tags = {
name = var.instance_name[count.index]
}
}
variable "instance_names" {
defalut = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "monitoring"]
}
