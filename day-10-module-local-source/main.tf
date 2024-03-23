module "aadi" {
    source = "../day-3_custom_network" 
   ami_id = "ami-0c101f26f147fa7fd"
    instance_type = "t2.micro"
    key_name  	= "adi"
   aws_vpc ="aws_vpc.adi.id"
aws_internet_gateway = "aws_internet_gateway.adi.id"
aws_route_table = "aws_route_table.adi.id"
aws_route_table_association = "aws_route_table_association.adi.id"
    
}