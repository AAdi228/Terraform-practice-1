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