variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "instance_type_web" {
  type    = string
  default = "t3.micro"
}
variable "instance_type_db" {
  type    = string
  default = "t3.small"
}
variable "key_pair_name" {
  type = string
}
variable "my_ip" {
  description = "Your IP in CIDR format e.g. 1.2.3.4/32"
  type        = string
}