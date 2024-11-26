# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.user-project-tenant
  tenant_name = var.user-project-tenant
  password    = var.password
  auth_url    = "https://keystone-${var.region}.cloud.cybera.ca:5000/v3"
  region      = var.region
}