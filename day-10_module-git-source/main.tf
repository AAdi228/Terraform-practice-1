module "ec2_instance" {
 source  = "github.com/AAdi228/Terraform-practice-1/day-3_custom_network"
  ami_id = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name  	= "adi"
   aws_vpc ="aws_vpc.adi.id"
aws_internet_gateway = "aws_internet_gateway.adi.id"
aws_route_table = "aws_route_table.adi.id"
aws_route_table_association = "aws_route_table_association.adi.id"
}

#Example-2 while we are using module it will take existing values. if we need to change the values ex:regions,ami we can update values.