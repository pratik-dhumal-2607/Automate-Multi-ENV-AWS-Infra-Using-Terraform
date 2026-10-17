resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.my-env}-tws-terra-bucket-pratik"
    tags = {
        Name = "${var.my-env}-tws-terra-bucket-pratik"
        environment = var.my-env
    }
}
