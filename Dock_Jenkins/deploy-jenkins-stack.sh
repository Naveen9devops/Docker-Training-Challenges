#!/bin/bash

DATE=$(date -I)

docker buid . --no-cache -t naveenanthati3/jenkins:$DATE

docker tag naveenanthati3/jenkins:$DATE naveenanthati3:lts

docker tag naveenanthati3/jenkins:$DATE naveenanthati3:latest

docker push naveenanthati3/jenkins:$DATE

docker push naveenanthati3/jenkins:lts

docker push naveenanthati3/jenkins:latest

docker stack rm jenkins
sleep 10

docker stack deploy -c docker-compose.yml jenkins
