#!/bin/bash

echo **********************
echo Build Docker Image
echo **********************

cd ../../java-app/docker-compose && docker-compose -f docker-compose.yml build --no-cache

echo **********************
echo Finished
echo **********************