resource "aws_instance" "Adithya" {
  ami = "ami-09298640a92b2d12c"
  instance_type = "t2.medium"
  key_name = "ggt"
  user_data              = file("userdata.sh") 
  tags = {
    Name = "cherry"
  }
}
