provider "azurerm" {
  features {}
}

module "resource_group1" {
  source = "../../modules/resource_group"

  environment = "test1"
  label_order = ["name", "environment", ]

  name     = "test1"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}

module "resource_group2" {
  source = "../../modules/resource_group"

  environment = "test2"
  label_order = ["name", "environment", ]

  name     = "test2"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}

module "service_bus1" {
  source = "../../modules/service_bus"

  name        = "app"
  environment = "test"
  cost_centre = "test"
  resource_lock_enabled = true

  resource_group_name = module.resource_group1.resource_group_name
  location            = module.resource_group1.resource_group_location

  queues = [
    {
      name = "queue1"
      authorization_rules = [
        {
          name   = "testapp_auth1"
          rights = ["listen", "send"]
        }
      ]
    },

    {
    name = "queue2"
      authorization_rules = [
        {
          name   = "testapp_auth2"
          rights = ["listen", "send"]
        }
      ]
    }
  ]
}

module "service_bus2" {
  source = "../../modules/service_bus"

  name        = "app"
  environment = "test"
  resource_lock_enabled = true
  cost_centre = "test2"

  resource_group_name = module.resource_group2.resource_group_name
  location            = module.resource_group2.resource_group_location

  queues = [
    {
      name = "queue1"
      authorization_rules = [
        {
          name   = "example1"
          rights = ["listen", "send"]
        }
      ]
    },

    {
      name = "queue2"
      authorization_rules = [
        {
          name   = "example2"
          rights = ["listen", "send"]
        }
      ]
    }
  ]
}