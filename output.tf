output "instance_ips" {
    value = aws_instance.dev_node.*.public_ip
}