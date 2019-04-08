FROM debian:stretch
LABEL maintainer="rene.luria@infomaniak.com"
LABEL description="Basic docker image from stretch with common needed tools"
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
        bind9-host \
        curl \
        dnsutils \
        mtr-tiny \
        netcat \
        openssh-client \
        python3-minimal \
        python3-pip \
        rsync \
        traceroute \
        vim \
        netbase \
        git \
        jq

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
