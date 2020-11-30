FROM ubuntu:20.04

RUN sed -i '/deb/,/deb-src/s/^# //' /etc/apt/sources.list
RUN apt-get update && apt-get build-dep -y curl
