#!/bin/sh

# build docker image from Dockerfile
docker build -t item-app:v1 .

# show list of docker images 
docker images


# create a new image tag from source image, item-app:v1 to wisnuprawida/item-app:v1
docker tag item-app:v1 wisnuprawida/item-app:v1

# this login not work for me
# Error: Cannot perform an interactive login from a non TTY device
# so i use existing credential in my computer 

# Export Password to environment variable
# export DOCKER_PASSWORD=

# #login to docker hub 
# echo $DOCKER_PASSWORD | docker login -u wisnuprawida --password-stdin

# push the built image to github packages
docker push wisnuprawida/item-app:v1
