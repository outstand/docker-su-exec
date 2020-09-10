FROM buildpack-deps:latest

ENV SUEXEC_VERSION 0.2
RUN mkdir -p /tmp/build && cd /tmp/build && \
    wget -O su-exec.tar.gz https://github.com/ncopa/su-exec/archive/v${SUEXEC_VERSION}.tar.gz && \
    tar -zxf su-exec.tar.gz && \
    cd su-exec-${SUEXEC_VERSION} && \
    make PREFIX=/sbin && \
    cp su-exec /sbin/ && \
    cd && rm -rf /tmp/build
