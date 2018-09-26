#!/bin/bash
echo "CREATE - Attempting to create EC2: portfolio-ec2"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-ec2 --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create EC2: portfolio-ec2"
aws cloudformation wait stack-create-complete --stack-name portfolio-ec2