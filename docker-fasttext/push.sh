#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/fasttext"
VERSION=2
docker login hub.dsra.local:5000
docker push $IMAGE_NAME:$VERSION