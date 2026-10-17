variable "dynamo_table_name" {
    description = "this is the table name for Dynamodb"
    type = string
    default = "tws-dynamo-table"
}

variable "ami_id" {
    description = "AMI ID for the EC2 (Amazon Linux)"
    type  = string
    default = "ami-0cdfc1e40cc5ca08a"
}

