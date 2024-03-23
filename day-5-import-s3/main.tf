provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_s3_bucket" "aadi" {
    bucket = "aadi-6281019963"
  
}

#import command
# terraform import aws_s3_bucket.aadi bucketname