variable "ami_id" {
    description = "passing ami value to main.tf"
    type = string
    default = "ami-0ba259e664698cbfc"
  
}
variable "instance_type" {
    description = "passing value to main.tf"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    description = "passing value to main.tf"
    type = string
    default = "my-sf"
  
}