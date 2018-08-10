FROM debian:stretch
LABEL maintainer="Bitrity Developers <dev@bitrity.org>"
LABEL description="Dockerised BitrityCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
