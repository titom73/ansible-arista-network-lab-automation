FROM alpine:edge

RUN echo "ipv6" >> /etc/modules
RUN apk update
RUN apk add --no-cache \
    iputils \
    curl \
    mtr \
    git \
    iperf3 \
    vim \
    tcpdump \
    tmux

CMD ash