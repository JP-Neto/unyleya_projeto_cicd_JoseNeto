variable "docker_username" {
  description = "Usuário do Docker Hub"
  type        = string
}

variable "docker_password" {
  description = "Senha do Docker Hub"
  type        = string
  sensitive   = true
}