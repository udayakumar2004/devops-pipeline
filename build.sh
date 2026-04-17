#!/bin/bash

DOCKER_USER="udayakumar007"
APP_NAME="react-app"

echo "Building Docker Image..."
docker build -t $DOCKER_USER/$APP_NAME-dev:latest .

echo "Pushing to Docker Hub..."
docker push $DOCKER_USER/$APP_NAME-dev:latest

echo "Build Completed"
