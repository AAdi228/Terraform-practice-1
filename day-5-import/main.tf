provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "aadi" {
    ami = ami-013168dc3850ef002
    instance_type = t2.micro 
  
}

#import command
# terraform import aws_instance.example instanceid