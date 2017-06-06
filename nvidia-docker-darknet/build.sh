#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/darknet"
sudo docker build -t $IMAGE_NAME .
