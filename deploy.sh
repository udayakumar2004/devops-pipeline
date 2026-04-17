#!/bin/bash

EC2_IP="13.206.94.217"
KEY="~/test.pem"

IMAGE="udayakumar007/react-app-dev"

echo "Deploying..."

ssh -o StrictHostKeyChecking=no -i $KEY ec2-user@$EC2_IP << EOF

docker pull $IMAGE

docker rm -f react-app || true

docker run -d -p 80:80 --name react-app $IMAGE

EOF

echo "Deployment Done"
