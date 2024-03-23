module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "adi"
  monitoring             = true
  ami = ami-0c101f26f147fa7fd

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}