#!/bin/bash

IMAGE_NAME="nvidia-docker-keras-test"

sudo docker build -t $IMAGE_NAME .

NV_GPU=1 sudo nvidia-docker run -ti --rm $IMAGE_NAME