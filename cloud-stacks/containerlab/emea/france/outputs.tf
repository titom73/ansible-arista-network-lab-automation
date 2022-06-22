output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = "${module.aws_containerlab.instance_public_ip}"
}

output "ssh_connection" {
  description = "Connection information"
  value = "${module.aws_containerlab.ssh_connection}"
}

output "aws-region" {
  description = "Region where VM is running on"
  value = "${module.aws_containerlab.aws-region}"
}