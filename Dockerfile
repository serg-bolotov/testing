FROM ubuntu:20.04
COPY metrics .
RUN apt-get update -y && apt-get install python3.8 python3-pip -y && pip3 install psutil
