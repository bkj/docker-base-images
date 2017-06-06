#!/bin/bash

IMAGE_NAME="hub.dsra.local:5000/bkj/fklearn"
docker login hub.dsra.local:5000
docker push $IMAGE_NAME