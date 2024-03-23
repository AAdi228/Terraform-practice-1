variable "ami" {
  type    = string
  default = "ami-05295b6e6c790593e"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = ["dev","prod","aadi"] #if we remove any of list ex: "dev" only dev terminates other will remain same.
}