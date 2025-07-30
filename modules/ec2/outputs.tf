output "instance_ids" {
  value = values(aws_instance.this)[*].id
}

output "public_ips" {
  value = values(aws_instance.this)[*].public_ip
}

output "instance_names" {
  value = [for inst in values(aws_instance.this) : inst.tags["Name"]]
}
