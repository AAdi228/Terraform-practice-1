resource "aws_instance" "aadi" {
    ami = "ami-013168dc3850ef002"
    instance_type = "t2.micro"
    key_name = "ggt"
    
  
}

resource "aws_s3_bucket" "aadi" {
    bucket = "jhonissen"
    depends_on = [aws_instance.aadi]
     
}
resource "aws_s3_bucket" "cherry" {
    bucket = "cheruilick"
    depends_on = [ aws_s3_bucket.aadi ]
  
}