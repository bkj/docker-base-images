#!/bin/bash


apt-get clean && apt-get update
apt-get install -y git build-essential libicu-dev

# Install python requirements
pip install -r requirements.txt
