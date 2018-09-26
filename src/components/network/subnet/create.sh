echo "CREATE - Attempting to create Subnet: portfolio-subnet"
aws cloudformation create-stack --region eu-west-2 --stack-name portfolio-subnet --template-body file://vpc-template.json --parameters file://parameters.json

echo "WAITING - waiting on create Subnet: portfolio-subnet"
aws cloudformation wait stack-create-complete --stack-name portfolio-subnet