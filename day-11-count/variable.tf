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
    default = [ "dev","prod","cherry"]
   #default = [ "prod","cherry"] #if we delete "dev" [0,1,2] it follows 2 will destroy & 0,1 modifies.
   # to avoid this we are using for_each loop
}
# if we remove any of these list ex: dev removed it will delete cherry and recreate cherry as sequence
