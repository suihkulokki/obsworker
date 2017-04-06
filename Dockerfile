FROM suihkulokki/debian:stretch

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends  \
 apt-utils \
 binutils \
 bsdtar \
 cpio \
 curl \
 debootstrap \
 libcompress-raw-zlib-perl \
 libtimedate-perl \
 libxml-parser-perl \
 libxml-simple-perl \
 lsb-base \
 lvm2 \
 lzma \
 psmisc \
 rpm \
 util-linux \
 && apt-get clean \
 && rm -rf \
 /var/lib/apt/lists/* \
 /tmp/* \
 /var/tmp/*

COPY start-obsworker /

CMD ["/start-obsworker"]
