FROM debian:latest

RUN apt-get update -qq &&\
    apt-get install -y build-essential libncurses5-dev gawk git subversion \
        libssl-dev gettext zlib1g-dev swig unzip python2.7 wget file &&\
        apt-get -y autoremove && apt-get clean

COPY . /sdk

WORKDIR /sdk
