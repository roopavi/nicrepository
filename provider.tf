provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "eb3968fe-3761-4c75-94e5-0e8c95e5e4c9"
  client_id       = "15d2a6fa-ffdc-4ad8-b941-8bd5d3b87f34"
  client_secret   = "_Dw9V-.~T9-Na2wO88wI-f3YSmOzuy_5-p"
  tenant_id       = "7829b58f-8707-4a6d-bf5f-d8f7ac3c18ea"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg1_storage"
    storage_account_name = "grsvstorageaccount"
    container_name       = "containergrsv"
    key                  = "prod12.terraform.tfstate"
    access_key           = "TFsU9Xd1Bsvh6NMwToaOFFF+wqunmiHctyaTLYHHmg6QKfwESISEhApkKRSD2nIabEINr6kWdcbHp7hgTsPpcw=="
  }
}