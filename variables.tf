variable "name" {
  description = "The name of the security group"
}
variable "description" {
  description = "The description of the security group"
}
variable "owner" {
  description = "Owner tag added to resource to identify who build the resource"
  default = "Terraform"
}
variable "vpc_id" {
  description = "The VPC id that this security group is associated to"
}