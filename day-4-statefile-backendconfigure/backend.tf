terraform{
    backend "s3" {
        bucket = "satefile-configure-2"
        key = "my-sf"
        region = "ap-south-1"
        dynamodb_table = "terraform-state-lock-dynamo"
        encrypt = true
      
    }
}