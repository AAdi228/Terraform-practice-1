variable "ami_id" {
    description = "passing ami value to main.tf"
    type = string
    default = ""
}
variable "instance_type" {
    description = "passing value to main.tf"
    type = string
    default = ""
  
}
variable "key_name" {
    description = "passing value to main.tf"
    type = string
    default = ""
  
}
variable "subnet_id" {
    description = "passing value to main.tf"
    type = string
    default = ""
  
}
variable "aws_internet_gateway" {
      description = "passing value to main.tf"
    type = string
    default = ""
  
}
variable "aws_vpc" {
      description = "passing value to main.tf"
    type = string
    default = ""
  
}
variable "aws_route_table" {
    description = "passing value to main.tf"
    type = string
    default = ""
}
variable "aws_route_table_association" {
      description = "passing value to main.tf"
    type = string
    default = ""
  
}