#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `test`, `staging`)."
}

variable "cost_centre" {
  type        = string
  default     = ""
  description = "Name of the cost centre that the resource is attached to"
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^https://", var.repository))
    error_message = "The module-repo value must be a valid Git repo link."
  }
}

variable "business_unit" {
  type        = string
  default     = "Corp"
  description = "Top-level division of your company that owns the subscription or workload that the resource belongs to. In smaller organizations, this tag might represent a single corporate or shared top-level organizational element."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "extra_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = "hello@wealthkernel"
  description = "ManagedBy, eg 'Wealthkernel'."
}

variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources."
  default     = true
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `name`, `environment` and `attributes`."
}
