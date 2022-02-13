
# core

variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-west-1"
}

# networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.3.0/24"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
  default     = "10.0.4.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-west-1b", "us-west-1c"]
}

# load balancer

variable "health_check_path_client" {
  description = "Health check path for the default target group"
  default     = "/"
}
variable "health_check_path_users" {
  description = "Health check path for the default target group"
  default     = "/ping"
}


# ecs

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "flask-react-fargate"
}
variable "docker_image_url_client" {
  description = "Docker client image to run in the ECS cluster"
  default     = "876547795591.dkr.ecr.us-west-1.amazonaws.com/test-driven-client-fargate:prod"
}
variable "docker_image_url_users" {
  description = "Docker users image to run in the ECS cluster"
  default     = "876547795591.dkr.ecr.us-west-1.amazonaws.com/test-driven-users-fargate:prod"
}
variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 1
}
variable "secret_key" {
  description = "Flask Secret Key"
  default     = "3939f1fed630f97539a8610139b0c8f18b4d6e51145331a7ed6bcf73124843008445352e1bf549304879204284ff47c7942b172f0e5169a33009c3bc8c53f74b234d698c6754083c46bf90941760e25dc4d052117896fd4ff4345d3150e71239a7e590a5"
}

# logs

variable "log_retention_in_days" {
  default = 30
}

# key pair

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

# rds

variable "rds_db_name" {
  description = "RDS database name"
  default     = "api_prod"
}
variable "rds_username" {
  description = "RDS database username"
  default     = "webapp"
}
variable "rds_password" {
  description = "RDS database password"
}
variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t2.micro"
}
