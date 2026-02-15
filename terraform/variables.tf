variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "app_port" {
  description = "Port exposed by the application"
  type        = number
  default     = 3000
}

variable "app_count" {
  description = "Number of application instances to run"
  type        = number
  default     = 2
}

variable "container_image" {
  description = "Docker image to run in the ECS cluster"
  type        = string
}

variable "cpu" {
  description = "Fargate instance CPU units (256, 512, 1024, 2048, 4096)"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Fargate instance memory in MB (512, 1024, 2048, 4096, 8192, etc.)"
  type        = number
  default     = 512
}

variable "health_check_path" {
  description = "Health check path for the load balancer"
  type        = string
  default     = "/health"
}
