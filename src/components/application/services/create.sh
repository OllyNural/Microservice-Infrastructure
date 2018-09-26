#!/bin/bash
echo "CREATE - Attempting to create Services: portfolio-service"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-service --template-body file://./template.json --parameters file://./parameters.json

echo "WAITING - waiting on create Services: portfolio-service"
aws cloudformation wait stack-create-complete --stack-name portfolio-service