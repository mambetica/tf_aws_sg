variable "name" { }
variable "owner" {
  description = "Owner tag added to resource to identify who build the resource"
  default = "Terraform"
}
variable "vpc_id" { }