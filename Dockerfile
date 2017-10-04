FROM ubuntu:16.04
WORKDIR /usr/src
RUN apt-get update && \
  apt-get install -y gcc g++ libssl-dev libgmp-dev make cmake libboost-dev libboost-test-dev libboost-program-options-dev libboost-system-dev libboost-filesystem-dev libevent-dev automake libtool flex bison pkg-config libglib2.0-dev git && \
  apt-get install -y libmsgpack-dev libboost-thread-dev libboost-date-time-dev libboost-test-dev libboost-filesystem-dev libboost-system-dev libhiredis-dev cmake build-essential libboost-regex-dev && \
  apt-get install -y wget supervisor

RUN wget http://archive.apache.org/dist/thrift/0.9.2/thrift-0.9.2.tar.gz && \
  tar zxvf thrift-0.9.2.tar.gz && \
  cd thrift-0.9.2 && \
  ./configure && \
  make && \
  make install

RUN wget http://download.redis.io/releases/redis-3.2.0.tar.gz && \
  tar zxvf redis-3.2.0.tar.gz && \
  cd redis-3.2.0 && \
  make && \
  make install

RUN git clone https://github.com/luca3m/redis3m && \
  cd redis3m && \
  cmake . && \
  make && \
  make install

COPY ./Caravel/ /usr/src/encKV/Caravel/
COPY ./Client/ /usr/src/encKV/Client/
COPY ./Proxy/ /usr/src/encKV/Proxy/
COPY ./Test/ /usr/src/encKV/Test/
COPY ./fastore/ /usr/src/encKV/fastore/
COPY ./Makefile /usr/src/encKV/

RUN cd encKV && make

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
EXPOSE 6379
EXPOSE 9090

COPY ./supervisord.conf /etc/
CMD ["/usr/bin/supervisord"]
