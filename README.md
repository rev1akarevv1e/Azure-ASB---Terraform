# WK_task

Terraform

Create two Azure Service Bus Namespaces (ASBN) in three environments (test, staging, production), ensure that: 

● each ASBN is provisioned in a dedicated Resource Group;  - check

● each ASBN account has two Queues; - check

● each ASBN has tags that show the cost centre and a product name it belongs to; - check

● The resources are protected from accidental deletion; -check

● there might be many more ASBNs in each environment with any more Queues in each ASBN;  -check

Notes:
Remote state and private endpoints are not required for this task. - These can easily be added if neccessary.

This script will deploy 2 resources groups and 2 services buses that include 2 queues, tags for `cost_centre` and product `name`, there is granular protection for accidental deletion, and you can deploy multiple ASBNs in each resource group or environment.

Instructions:
1. cd into `environments/test`
2. run `terraform init`
3. run `terraform plan`
4. check for any errors, and then `apply`.

It is also possible to implement versioning using git, please see the variable file for the `repository` block.

