
FROM gitpod/workspace-base

USER root

RUN echo "deb http://security.ubuntu.com/ubuntu/ bionic-security main" >> /etc/apt/sources.list

RUN sudo apt-get update && apt-get install -y libssl1.0.0 libssl-dev \
    && cd /lib/x86_64-linux-gnu \
    && sudo ln -s libssl.so.1.0.0 libssl.so.10 \
    && sudo ln -s libcrypto.so.1.0.0 libcrypto.so.10

USER gitpod