#creation of VPC
resource "aws_vpc" "adi" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "cust"
    }
    
}
# creation of IG & Attached to VPC
resource "aws_internet_gateway" "adi" {
    vpc_id = aws_vpc.adi.id
    tags = {
      Name = "IG"
    }
  
}

  
# Creation pf subnet
resource "aws_subnet" "adi" {
    vpc_id = aws_vpc.adi.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "pub"
    }

}

#creation of Route table & edit route
resource "aws_route_table" "adi" {
    vpc_id = aws_vpc.adi.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.adi.id
    }
  
}

# subnet assosication
resource "aws_route_table_association" "adi" {
    route_table_id = aws_route_table.adi.id
    subnet_id = aws_subnet.adi.id #Assertion of subnet
}


#creation of instance
resource "aws_instance" "adi"{
    ami = var.ami_id
    instance_type = var.instance_type   
    key_name = var.key_name
    subnet_id = aws_subnet.adi.id
    security_groups = [aws_security_group.cherry.id]
    associate_public_ip_address = true
    tags = {
        Name = "adi_ec2"
    }

}

# creation of security group
resource "aws_security_group" "cherry" {
    vpc_id = aws_vpc.adi.id
    ingress {
        description = "tls values from vpc"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "tls values from vpc"
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}
  