module "dev-app" {
    source = "./aws_infra"
    my-env = "dev"
    instance_type = "t3.micro"
    ami_id = "ami-0cdfc1e40cc5ca08a"
    instance_count = 1
}

module "stg-app" {
    source = "./aws_infra"
    my-env = "stg"
    instance_type = "t3.small"
    ami_id = "ami-0cdfc1e40cc5ca08a"
    instance_count = 2
}

module "prd-app" {
    source = "./aws_infra"
    my-env = "prd"
    instance_type = "c7i-flex.large"
    ami_id = "ami-0cdfc1e40cc5ca08a"
    instance_count = 3
}
