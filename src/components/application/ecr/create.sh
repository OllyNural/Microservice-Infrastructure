#!/bin/bash
echo "CREATE - Attempting to create ECR: portfolio-repository"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-repository --template-body file://./template.json --parameters file://./parameters.json

echo "WAITING - waiting on create ECR: portfolio-repository"
aws cloudformation wait stack-create-complete --stack-name portfolio-repository