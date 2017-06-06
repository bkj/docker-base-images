#!/bin/bash

IMAGE_NAME="py-faster-rcnn-test"
sudo docker build -t $IMAGE_NAME .
NV_GPU=1 sudo nvidia-docker run -ti --rm $IMAGE_NAME

