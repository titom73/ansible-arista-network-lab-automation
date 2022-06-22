project             = "containerlab-demo"
aws_region          = "eu-west-3"
availability_zone   = "eu-west-3a"

instance_type       = "t2.micro"

cidr_block          = "10.0.0.0/16"
public_subnet       = "10.1.0.0/24"

private_key_path    = "~/.ssh/id-tom-aws"
public_key_path     = "~/.ssh/id-tom-aws.pub"