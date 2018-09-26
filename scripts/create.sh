#!/bin/bash

cd src

cd components/application/ecr
sh create.sh
cd ../../../


cd components/application/cluster
sh create.sh
cd ../../../

cd components/application/tasks
sh create.sh
cd ../../../

cd components/application/services
sh create.sh
cd ../../../

# cd components/application/ec2
# sh create.sh
# cd ../../../


# sh src/components/application/tasks/create.sh

# sh src/components/application/ec2/create.sh

# sh src/components/application/services/create.sh