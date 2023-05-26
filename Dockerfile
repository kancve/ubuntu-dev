ARG VERSION=22.04

FROM ubuntu:${VERSION}

# install some common development tools
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    vim \
    cmake \
    g++ \
    gdb \
    git \
    subversion \
    wget \
    openssh-server \
    net-tools \
    iputils-ping \
    apache2-utils \
    maven \
    openjdk-8-jdk-headless

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 LANG=C.UTF-8
ENV PATH=$PATH:$JAVA_HOME/bin

# turn on ssh service
RUN sed -i "s?prohibit-password?yes?g" /etc/ssh/sshd_config && \
    echo "root:kancve" | chpasswd && \
    mkdir -p /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
