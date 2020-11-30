FROM ubuntu:20.04

RUN sed -i '/deb/,/deb-src/s/^# //' /etc/apt/sources.list
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get build-dep -y curl
