output "vpc_id" {
  value = aws_vpc.main.id
}
output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}
output "bastion_public_ip" {
  value = aws_eip.bastion.public_ip
}