FROM ubuntu:bionic

RUN apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata \
    && apt-get -y install build-essential clang bison flex gawk git pkg-config python python3 cmake \
                wget python3-dev libboost-all-dev gperf autoconf libreadline-dev tcl-dev libffi-dev \
                libftdi-dev

RUN mkdir /src && cd /src && git clone https://github.com/cliffordwolf/icestorm.git icestorm && cd icestorm \
    make -j4 && make install

RUN cd /src && git clone https://github.com/cseed/arachne-pnr.git arachne-pnr && cd arachne-pnr \
    make -j4 && make install

RUN cd /src && git clone https://github.com/cliffordwolf/yosys.git yosys && cd yosys \
    make -j4 && make install

RUN cd /src && git clone https://github.com/yosyshq/nextpnr && cd nextpnr && \
    cmake . -DARCH=ice40 -DBUILD_GUI=OFF &&  make -j4 && make install

RUN cd /src && git clone https://github.com/steveicarus/iverilog && cd iverilog && \
    chmod +x ./autoconf.sh && ./autoconf.sh && ./configure && make -j4 && make install 

WORKDIR /work