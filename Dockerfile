FROM debian:buster
RUN apt-get update
RUN apt-get install -y python python-pip
RUN apt-get install -y python3 python3-pip
RUN pip install -U platformio