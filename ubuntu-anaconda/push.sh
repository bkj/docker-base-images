#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/ubuntu-anaconda"
docker login hub.dsra.local:5000
docker push $IMAGE_NAME