# WK_task 1

Terraform

Create two Azure Service Bus Namespaces (ASBN) in three environments (test, staging, production), ensure that: 

● each ASBN is provisioned in a dedicated Resource Group;  ✅

● each ASBN account has two Queues; - ✅

● each ASBN has tags that show the cost centre and a product name it belongs to; - ✅

● The resources are protected from accidental deletion; - ✅

● there might be many more ASBNs in each environment with any more Queues in each ASBN;  - ✅

Notes:
Remote state and private endpoints are not required for this task. - These can easily be added if neccessary. - ✅

This script will deploy 2 resources groups and 2 services buses that include 2 queues, tags for `cost_centre` and product `name`, there is granular protection for accidental deletion, and you can deploy multiple ASBNs in each resource group or environment.

Instructions:
1. cd into `environments/test`
2. run `terraform init`
3. run `terraform plan`
4. check for any errors, and then `apply`.

It is also possible to implement versioning using `git`, please see the variable file for the `repository` block.


# WK_task 2

ASCII like "back of the napkin" diagram for observability. 

<img width="381" alt="image" src="https://github.com/rev1akarevv1e/WK_task/assets/103734417/28668797-3cca-41d6-9b58-f91ea6e8a2e1">


