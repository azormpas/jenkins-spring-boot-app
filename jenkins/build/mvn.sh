#!/bin/bash

echo **********************
echo Build carshop jar file
echo **********************

docker run --rm -it -v ${pwd}/../../java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"

echo **********************
echo Finished
echo **********************

