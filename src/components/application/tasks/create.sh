#!/bin/bash
echo "CREATE - Attempting to create Task: portfolio-task"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-task --template-body file://./template.json --parameters file://./parameters.json

echo "WAITING - waiting on create Task: portfolio-task"
aws cloudformation wait stack-create-complete --stack-name portfolio-task