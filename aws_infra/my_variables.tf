variable "my-env" {
    description = "This is the Environment for Module"
    type = string
}

variable "ami_id" {
    description = "This is the AMI ID for the EC2"
    type = string
}

variable "instance_type" {
    description = "This is the type of instance for EC2"
    type = string
}

variable "instance_count" {
    description = "This is the count of instance for EC2"
    type = number
}
