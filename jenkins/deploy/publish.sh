#!/bin/bash

export PASS=$(SED -n '1p' /tmp/.auth)

docker login -u azormpas -p $PASS
cd ~/app && docker-compose down && docker-compose up -d