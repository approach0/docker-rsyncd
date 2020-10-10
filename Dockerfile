## base environment
FROM debian:buster
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --no-install-recommends rsync

RUN mkdir /data
COPY rsyncd.conf /tmp/rsyncd.conf

CMD rsync --daemon --no-detach --verbose --config=/tmp/rsyncd.conf
