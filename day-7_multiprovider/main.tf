# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = "ap-south-1"
}

#Another provider alias 
provider "aws" {
  region = "us-east-1"
  alias = "china"
}

resource "aws_s3_bucket" "test" {
  bucket = "bigffnmihhbi"

}
resource "aws_s3_bucket" "test2" {
  bucket = "ghfuggkldghjoo"
  provider = aws.china  #provider.value of alias
  
}