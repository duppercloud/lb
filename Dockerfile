FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y socat net-tools

COPY ./start.sh /
RUN chmod a+x /start.sh

ENTRYPOINT /start.sh 
