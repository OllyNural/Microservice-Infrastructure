#!/bin/bash

cd src

cd components/application/ecr/ && sh create.sh
cd ../../../

# sh src/components/application/cluster/create.sh

# sh src/components/application/tasks/create.sh

# sh src/components/application/ec2/create.sh

# sh src/components/application/services/create.sh