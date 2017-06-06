FROM nvidia/cuda:8.0-cudnn5-devel

RUN sudo apt-get update
RUN sudo apt-get install -y wget g++

# Install Anaconda
RUN wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
RUN bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /root/anaconda2
ENV PATH="/root/anaconda2/bin:${PATH}"

ADD ./launch.sh /src/launch.sh
ADD ./setup.sh /src/setup.sh

# Setup
RUN sh /src/setup.sh

# Run
CMD sh /src/launch.sh