resource_group = {
    rg1 = {
        name     = "rg-module-01"
        location = "East US"
    }
    rg2 = {
        name     = "rg-module-02"
        location = "West US"
    }
rg3 = {
        name     = "rg-module-02"
        location = "West US"
    }
}

stg = {
    stg1 = {
        name                     = "lallidada"
        resource_group_name      = "rg-module-01"
        location                 = "East US"
        account_tier             = "Standard"
        account_replication_type = "LRS"
    }
    stg2 = {
        name                     = "lallidada2"
        resource_group_name      = "rg-module-02"
        location                 = "West US"
        account_tier             = "Standard"
        account_replication_type = "LRS"
    }
}

subnet = {
    "subnet1" = ["10.0.1.0/24"]
    "subnet2" = ["10.0.2.0/24"]
    "subnet3" = ["10.0.3.0/24"]
    "AzureBastionSubnet" = ["10.0.4.0/24"]
}
