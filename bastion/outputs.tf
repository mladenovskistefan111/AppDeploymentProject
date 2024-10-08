# --- bastion/outputs.tf ---

output "bastion_security_group_id" {
  value = aws_security_group.bastion_security_group.id
}

output "bastion_host_ip" {
  value = aws_instance.bastion.public_ip
}