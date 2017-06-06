#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/darknet"
docker login hub.dsra.local:5000
docker push $IMAGE_NAME
