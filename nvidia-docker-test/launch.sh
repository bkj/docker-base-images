#!/bin/bash

nvidia-smi

export THEANO_FLAGS='mode=FAST_RUN,device=gpu,floatX=float32,lib.cnmem=0.1'
export KERAS_BACKEND=theano

python -c "import keras; from subprocess import Popen; Popen('nvidia-smi'.split())"
# The second `nvidia-smi` printout should show some (eg 10%) GPU utilization

