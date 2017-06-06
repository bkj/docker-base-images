FROM ubuntu:16.04

# Add some dependencies
RUN apt-get clean && apt-get update
RUN apt-get install -y wget g++ gcc bzip2 git build-essential

# Install Anaconda
RUN wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
RUN bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /root/anaconda2
ENV PATH="/root/anaconda2/bin:${PATH}"

RUN /bin/bash
