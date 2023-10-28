#!/bin/bash

echo "Enter your environment (staging or production)"
read environment

rm -Rf .terraform/

terraform init -upgrade=true -var-file=vars/$environment.tfvars
terraform apply -var-file=vars/$environment.tfvars