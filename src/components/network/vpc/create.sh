echo "CREATE - Attempting to create VPC: portfolio-vpc"
aws cloudformation create-stack --region eu-west-1 --stack-name portfolio-vpc --template-body file://vpc-template.json --parameters file://parameters.json

echo "WAITING - waiting on create VPC: portfolio-vpc"
aws cloudformation wait stack-create-complete --stack-name portfolio-vpc