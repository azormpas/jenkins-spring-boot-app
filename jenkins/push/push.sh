#!/bin/bash

echo **********************
echo Pushing Image
echo **********************

IMAGE="car-shop"

echo ** Login **
docker login -u azormpas -p $PASS

echo ** Tag Image **
docker tag ${IMAGE}:latest azormpas/${IMAGE}:latest

echo ** Push Image **
docker push azormpas/%IMAGE%:latest

echo **********************
echo Finished
echo **********************