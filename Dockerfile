FROM alpine:latest

RUN apk update && apk add --no-cache \
    build-base \
    cmake \
    make \
    gcc \
    g++ \
    libc-dev \
    linux-headers \
    libaec-dev \
    gfortran \
    perl

RUN mkdir /usr/local/src
WORKDIR /usr/local/src
RUN wget https://confluence.ecmwf.int/download/attachments/45757960/eccodes-2.40.0-Source.tar.gz
RUN tar xvzf eccodes-2.40.0-Source.tar.gz; rm eccodes-2.40.0-Source.tar.gz
RUN mkdir eccodes-2.40.0-Source/build 
WORKDIR /usr/local/src/eccodes-2.40.0-Source/build
RUN cmake -DCMAKE_INSTALL_PREFIX=/usr/local ../; make -j4; ctest -j4; make install
WORKDIR /root
