FROM nvidia/cuda:8.0-cudnn5-devel

# Add some dependencies
RUN sudo apt-get update
RUN sudo apt-get install -y wget g++

# Install Anaconda
RUN wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
RUN bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /root/anaconda2
ENV PATH="/root/anaconda2/bin:${PATH}"

# Install Caffe deps
RUN sudo apt-get install -y build-essential cmake git pkg-config libprotobuf-dev \
    libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler \
    libatlas-base-dev libgflags-dev libgoogle-glog-dev liblmdb-dev

RUN sudo apt-get install -y libopencv-dev
RUN sudo apt-get install -y --no-install-recommends libboost-all-dev

RUN pip install easydict protobuf
RUN conda install opencv

# Install py-faster-rcnn (bkj/cuda8)
RUN git clone -b cuda8 --recursive \
    https://github.com/bkj/py-faster-rcnn \
    /root/py-faster-rcnn

ADD ./resources/Makefile.config /root/py-faster-rcnn/caffe/Makefile.config
RUN cd /root/py-faster-rcnn/caffe && make all -j20 && make pycaffe
RUN cd /root/py-faster-rcnn/lib && make python2 && python setup.py install
