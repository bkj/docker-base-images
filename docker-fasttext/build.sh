#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/fasttext"
VERSION="2"

sudo docker build -t $IMAGE_NAME .
sudo docker tag $IMAGE_NAME $IMAGE_NAME:$VERSION