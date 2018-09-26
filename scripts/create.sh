#!/bin/bash

cd src

# Network
cd components/network/vpc
echo "CREATE - Attempting to create VPC: portfolio-vpc"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-vpc --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create VPC: portfolio-vpc"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-vpc
cd ../../../

cd components/network/subnet
echo "CREATE - Attempting to create Subnet: portfolio-subnet"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-subnet --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create Subnet: portfolio-subnet"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-subnet
cd ../../../

# Application

cd components/application/tasks
echo "CREATE - Attempting to create Task: portfolio-task"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-task --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create Task: portfolio-task"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-task
cd ../../../

cd components/application/cluster
echo "CREATE - Attempting to create Cluster: portfolio-cluster"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-cluster --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create Cluster: portfolio-cluster"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-cluster
cd ../../../

cd components/application/ec2
echo "CREATE - Attempting to create EC2: portfolio-ec2"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-ec2 --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create EC2: portfolio-ec2"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-ec2
cd ../../../

cd components/application/services
echo "CREATE - Attempting to create Services: portfolio-service"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-service --template-body file://template.json --parameters file://parameters.json

echo "WAITING - waiting on create Services: portfolio-service"
aws cloudformation wait stack-create-complete --region eu-west-1 --stack-name portfolio-service
cd ../../../
