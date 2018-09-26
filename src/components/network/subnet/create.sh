echo "CREATE - Attempting to create ECR: portfolio-repository"
aws cloudformation create-stack --region eu-west-2 --stack-name portfolio-repository --template-body file://./vpc-template.json --parameters file://./parameters.json

echo "WAITING - waiting on create stack"
aws cloudformation wait stack-create-complete --stack-name portfolio-repository