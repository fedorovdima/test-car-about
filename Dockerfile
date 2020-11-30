FROM ubuntu:20.04

# uncomment deb-src for further installation of build dependencies for curl
RUN sed -i '/deb/,/deb-src/s/^# //' /etc/apt/sources.list
RUN apt update && DEBIAN_FRONTEND=noninteractive apt build-dep -y curl
# download latest curl release from GitHub and build & install it from source code
RUN apt install wget && wget -q -O - https://api.github.com/repos/curl/curl/releases/latest | grep -m1 browser_download_url | cut -d '"' -f4 | wget -qi -
RUN tar xjf curl-*.tar.bz2
RUN cd curl-*/ && ./configure && make && make install
