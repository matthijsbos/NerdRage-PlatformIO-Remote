FROM debian:buster
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install -U platformio