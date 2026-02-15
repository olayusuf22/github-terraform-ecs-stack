variable "aws_region" {
  default = "us-east-1"
}

variable "environment" {
  default = "dev"
}

variable "project_name" {
  default = "myapp"
}

variable "container_image" {
  type = string
}

variable "app_port" {
  default = 3000
}
