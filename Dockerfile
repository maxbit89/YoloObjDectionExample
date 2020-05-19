FROM debian:stretch-slim

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python3 python3-pip python-dev python-setuptools
RUN apt-get install -y libopencv-dev
RUN apt-get install -y wget
RUN apt-get install -y git
RUN python3 -m pip install opencv-python
RUN python3 -m pip install --upgrade tensorflow requests
#RUN python3 -m pip install tensorflow-gpu #only useable with CUDA

ADD data .
ADD darkflow .
RUN cd darkflow && git pull && git checkout master
RUN python3 -m pip install -e ./darkflow/
