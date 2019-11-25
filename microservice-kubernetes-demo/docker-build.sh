#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=ewolff
fi;
docker build --tag=microservice-apache apache
docker tag microservice-apache $DOCKER_ACCOUNT/microservice-apache:latest
docker push $DOCKER_ACCOUNT/microservice-apache

docker build --tag=microservice-catalog microservice-catalog
docker tag microservice-catalog $DOCKER_ACCOUNT/microservice-catalog:latest
docker push $DOCKER_ACCOUNT/microservice-catalog

docker build --tag=microservice-customer microservice-customer
docker tag microservice-customer $DOCKER_ACCOUNT/microservice-customer:latest
docker push $DOCKER_ACCOUNT/microservice-customer

docker build --tag=microservice-order microservice-order
docker tag microservice-order $DOCKER_ACCOUNT/microservice-order:latest
docker push $DOCKER_ACCOUNT/microservice-order