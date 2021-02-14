#!/bin/bash

scp -i /opt/prod /tmp/.auth prod-user@example.machine:/tmp/.auth

scp -i /opt/prod ./jenkins/deploy/publish prod-user@example.machine:/tmp/publish

scp -i /opt/prod ../../java-app/docker-compose/docker-compose.yml prod-user@example.machine:/tmp/app

ssh -i /opt/prod auth prod-user@example.machine "/tmp/publish"