#!/bin/bash
echo "CREATE - Attempting to create Cluster: portfolio-cluster"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-cluster --template-body file://./template.json --parameters file://./parameters.json

echo "WAITING - waiting on create Cluster: portfolio-cluster"
aws cloudformation wait stack-create-complete --stack-name portfolio-cluster