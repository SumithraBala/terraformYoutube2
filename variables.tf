variable "instance_type" {
  description = "instance type for aws resources"
  type        = string
  default     = "t2.micro"
}

variable "access_key" {
  description = "aws accesskey"
  type        = string
}

variable "secret_key" {
  description = "aws secret_key"
  type        = string
}  