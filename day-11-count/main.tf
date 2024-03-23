#example1:without list varaible 
 #resource "aws_instance" "aadi" {
   #ami = "ami-05295b6e6c790593e"
   #instance_type = "t2.micro"
     #count = 2
     #key_name = "ggt"
    # tags = {
   #Name = "webec2"
   #    Name = "webec2-${count.index}"
  #   }
 #}


# main.tf
# different names to instance by using count
resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes)
 #tags = {
#     #   Name = "webec2"
#       Name = "webec2-${count.index}"
#     }
# }
  tags = {
    Name = var.sandboxes[count.index]
  }
}