# Cloudstack

Some terraform content to provision topologies in the cloud.

## Containerlab in AWS

Module path: [modules/aws-single-vm](modules/aws-single-vm/)

The VM comes with following tools:

- Docker
- Containerlab
- Git

### Configure terraform

```bash
# Create geo-stack
mkdir -p <region>/<country>/
cd <region>/<country>/

# Create terraform file
tee -a main.tf <<EOF
module "webserver" {
    source = "../../modules/aws-single-vm"
}
EOF

# Create output
tee -a outputs.tf <<EOF
output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = "${module.webserver.instance_public_ip}"
}

output "ssh_connection" {
  description = "Connection information"
  value = "${module.webserver.ssh_connection}"
}

output "aws-region" {
  description = "Region where VM is running on"
  value = "${module.webserver.aws-region}"
}
EOF

# Create tfvars
tee -a terraform.tfvars <<EOF
aws_region="eu-west-3"
availability_zone="eu-west-3a"
project="containerlab-demo"
instance_type="t2.micro"
EOF
```

> Be sure to edit tfvars file to hit your setup.

### Supported variables

- `project`
- `cidr_block`
- `public_subnet`
- `instance_type`
- `aws_region`
- `availability_zone`
- `public_key_path`
- `private_key_path`
- `ec2_user`

All these options are described with their default values in the module file [`modules/aws-single-vm/vars.init.tf`](modules/aws-single-vm/vars.init.tf)

### Execute terraform

```bash
# Init terraform for the first time
terraform init

# Plan for the first run only
terraform plan

# Build and deploy
terraform deploy
```

> Don't forget to destroy after your tests: `terraform destroy`
