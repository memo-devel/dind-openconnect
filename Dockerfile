FROM docker:stable-dind

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk add --update --no-cache --virtual=build-dependencies \
    automake \
    autoconf \
    gcc \
    g++ \
    gettext \
    git \
    linux-headers \
    libtool \
    libxml2-dev \
    make \
    openssl-dev \
    pkgconfig \
    vpnc \
  && git clone https://github.com/dlenski/openconnect.git /tmp/openconnect \
  && cd /tmp/openconnect \
  && ./autogen.sh \
  && ./configure --with-vpnc-script=/etc/vpnc/vpnc-script --without-openssl-version-check \
  && make install \
  && rm -rf /tmp/*

COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]
