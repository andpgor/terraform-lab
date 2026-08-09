location = "uksouth"

resource_group_name = "rg-terraform-lab-001"

vnet_name = "vnet-lab"

address_space = [
  "10.10.0.0/16"
]

app_subnet = [
  "10.10.1.0/24"
]

server_subnet = [
  "10.10.2.0/24"
]