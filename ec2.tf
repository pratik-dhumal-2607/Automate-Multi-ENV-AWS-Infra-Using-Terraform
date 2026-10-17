resource "aws_key_pair" "deployer" {
    key_name = "tws-terra-key"
    public_key = file("${path.module}/terra-key.pub")
}

resource "aws_default_vpc" "default" {
    
}

resource "aws_security_group" "tws_security" {
    name = "allow ports"
    description = "this SG is to open ports for EC2 instances"
    vpc_id = aws_default_vpc.default.id

    ingress {
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "This is for outgoing internet"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id
    instance_type = "t3.micro"
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.tws_security.name]
    tags = {
        Name = "tws-terra-instance"
    }

}
