variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used in resources"
  type        = string
  default     = "devops-ec2-demo"
}

variable "github_owner" {
  description = "GitHub user or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "app_port" {
  description = "Application port inside EC2"
  type        = number
  default     = 8000
}

locals {
  common_tags = {
    Project     = var.project_name
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}