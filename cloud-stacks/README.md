# Cloudstack

Some terraform content to provision topologies in the cloud.

## Containerlab in AWS

Module path: [aws-containerlab-vm](https://github.com/titom73/aws-containerlab-vm/)

The VM comes with following tools:

- Docker
- Containerlab
- Git

### Configure terraform

```bash
# Create geo-stack
mkdir -p <region>/<country>/
cd <region>/<country>/

# Copy variable definition
ln -s ../../variables.tf variables.tf

# Create your tfvar file
vim terraform.tfvars
```

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

All these options are described with their default values in the module file [`aws-containerlab-vm/variables.init.tf`](https://github.com/titom73/aws-containerlab-vm/tree/main/aws-containerlab-vm/variables.init.tf)

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
