output "ec2_public_ip" {
    description = "Public IP address of the EC2 instance"
    value = aws_instance.my-instance.public_ip
}

output "ec2_arn" {
    description = "ARN of the EC2 instance"
    value = aws_instance.my-instance.arn
}

output "s3_bucket_name" {
    description = "Name of the S3 bucket"
    value = aws_s3_bucket.my-bucket.bucket
}

output "dynamodb_table_name" {
    description = "Name of the DynamoDB table"
    value = aws_dynamodb_table.my-table.name
}
