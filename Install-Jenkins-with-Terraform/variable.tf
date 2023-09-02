# Variables
variable "instance_user_amazon_linux" {
  type = string 
  description = "SSH user for Amazon Linux instances"
  default     = "ec2-user"
}

variable "instance_user_ubuntu" {
  type = string 
  description = "SSH user for Ubuntu instances"
  default     = "ubuntu"
}

variable "private_key_path" {
  type = string   
  description = "Path to the SSH private key"
  default     = "~/Desktop/ovie.pem"
}