output "vm_ip" {
  value = aws_instance.vm.public_ip
}

output "fingerprint" {
  value = data.aws_key_pair.key.fingerprint
}

output "key_name" {
  value = data.aws_key_pair.key.key_name
}

output "id" {
  value = data.aws_key_pair.key.id
}
