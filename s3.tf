resource "aws_s3_bucket" "my-bucket" {
    bucket = "tws-terra-bucket-pratik"
    tags = {
        Name = "tws-terra-bucket-pratik"
    }
}