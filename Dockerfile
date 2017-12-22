FROM ubuntu:16.04
MAINTAINER Tim Shi <tim@timshi.ai>

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
