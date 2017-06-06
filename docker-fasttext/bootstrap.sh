#!/bin/bash


apt-get clean && apt-get update
apt-get install -y git build-essential libicu-dev

# Install python requirements
pip install -r requirements.txt
# conda install -y -c anaconda gcc

# Install fastText
mkdir -p ~/software
cd ~/software
git clone https://github.com/bkj/fastText
cd fastText
make clean
make -j4
cp fasttext /usr/local/bin/fasttext

# Install Python wrapper
git clone https://github.com/bkj/fastText.py
cd fastText.py
python setup.py install
