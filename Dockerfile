FROM ubuntu:xenial

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y git vim build-essential
RUN mkdir -p /conf/

COPY . /conf/


RUN cd /conf/ && make dotfiles
