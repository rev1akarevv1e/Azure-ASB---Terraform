#Module      : ASBN
#Description : Terraform ASBN module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "cost_centre" {
  type        = string
  default     = ""
  description = "Name of the cost centre that the resource is attached to"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg ''."
}

variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group."
}

variable "location" {
  type        = string
  description = "The name of an existing resource group."
}

variable "sku" {
  type        = string
  default     = "Basic"
  description = "The SKU of the namespace. The options are: `Basic`, `Standard`, `Premium`."
}

variable "capacity" {
  type        = number
  default     = 0
  description = "The number of message queues."
}

variable "topics" {
  type        = any
  default     = []
  description = "List of topics."
}

variable "authorization_rules" {
  type        = any
  default     = []
  description = "List of namespace authorization rules."
}

variable "queues" {
  type        = any
  default     = []
  description = "List of queues."
}

variable "resource_lock_enabled" {
  type        = bool
  default     = true
  description = "Set to true to enable the resource lock, false to disable it."
}

variable "lock_level" {
  type        = string
  default     = "CanNotDelete"
  description = "The lock level to apply. Choose 'CanNotDelete' to prevent deletion or 'ReadOnly' to allow read-only actions."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to true to enable the lock resource, false to disable it."
}


