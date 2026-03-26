resource_group_name = "rg-terraform-web"
location            = "canadacentral"

admin_password = "Terraform@1234"

environment      = "dev"
ssh_port         = 22
enable_public_ip = true

tags = {
  Environment = "QA"
  Owner       = "Kshitij"
  Project     = "terraform-web"
}

dns_servers = ["8.8.8.8", "1.1.1.1"]

vm_config = {
  name           = "vm-web"
  size           = "Standard_D2s_v3"
  admin_username = "azureuser"
}

vm_metadata = ["webserver", 1, true]

vnet_address_space      = ["10.10.0.0/16"]
subnet_address_prefixes = ["10.10.1.0/24"]

site_title   = "My Terraform Website"
site_message = "Deployed using Terraform on Azure."
