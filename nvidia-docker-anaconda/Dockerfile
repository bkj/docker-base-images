FROM nvidia/cuda:8.0-cudnn5-devel

# Add some dependencies
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y wget git build-essential

# Install Anaconda
RUN wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
RUN bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /root/anaconda2
ENV PATH="/root/anaconda2/bin:${PATH}"

RUN pip install keras 
RUN conda install pygpu

RUN /bin/bash
