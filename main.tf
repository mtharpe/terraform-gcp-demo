terraform {
  required_version = ">= 1.3.7"
}

module "network" {
  source                     = "../modules/network"

  name                       = var.network_name
  project                    = var.project_id
  region                     = var.region
  zones                      = var.zones
  webservers_subnet_name     = var.webservers_subnet_name
  webservers_subnet_ip_range = var.webservers_subnet_ip_range
  management_subnet_name     = var.management_subnet_name
  management_subnet_ip_range = var.management_subnet_ip_range
  bastion_image              = var.bastion_image
  bastion_instance_type      = var.bastion_instance_type
  user                       = var.user
  ssh_key                    = var.ssh_key
}


module "mysql-db" {
  source           = "../modules/db"
  db_name          = var.db_name
  project          = var.project_id
  region           = var.region
  user_name        = var.user_name
  user_password    = var.user_password
}

module "instance-template" {
  source        = "../modules/instance-template"
  name          = var.instace_template_name
  env           = var.env
  project       = var.project_id
  region        = var.region
  network_name  = module.network.name
  image         = var.app_image
  instance_type = var.app_instance_type
  user          = var.user
  ssh_key       = var.ssh_key
  db_name       = var.project_name
  db_user       = var.user_name
  db_password   = var.user_password
  db_ip         = module.mysql-db.instance_address
  owner         = var.owner
  environmentname = var.env
}

