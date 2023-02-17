variable "env" {
  type        = string
  description = "Environment name"
}

variable "region" {
  type        = string
  description = "GCP region name"
}

variable "billing_account" {
  type        = string
  description = "GCP billing account id"
}

variable "org_id" {
  type        = string
  description = "GCP organization id"
}

variable "zones" {
  type        = list(string)
  description = "GCP availability zones"
}

variable "webservers_subnet_ip_range" {
  type        = string
  description = "Webservers subnet ip range"
}

variable "management_subnet_ip_range" {
  type        = string
  description = "Management subnet ip range"
}

variable "bastion_image" {
  type        = string
  description = "Bastion instance image name"
}

variable "bastion_instance_type" {
  type        = string
  description = "Bastion instance type"
}

variable "user" {
  type        = string
  description = "GCP user name"
}

variable "ssh_key" {
  type        = string
  description = "SSH key file name"
}

variable "db_region" {
  type        = string
  description = "GCP database region name"
}

variable "appserver_count" {
  type        = number
  description = "Count of app servers to create"
}

variable "app_image" {
  type        = string
  description = "App server image name"
}

variable "app_instance_type" {
  type        = string
  description = "App server instance type"
}

variable "project_name" {
  type        = string
  description = "GCP project name"
}

variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "network_name" {
  type        = string
  description = "GCP network name"
}

variable "db_name" {
  type        = string
  description = "GCP database name"
}

variable "instace_template_name" {
  type        = string
  description = "GCP instance template name"
}

variable "webservers_subnet_name" {
  type        = string
  description = "GCP webservers subnet name"
}

variable "management_subnet_name" {
  type        = string
  description = "GCP management subnet name"
}

variable "user_name" {
  type        = string
  description = "User name for authentication"
}

variable "user_password" {
  type        = string
  description = "Password for authentication"
}
variable "owner" {
  type        = string
  description = "owner"
}

