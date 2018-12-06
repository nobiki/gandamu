FROM debian:stretch-slim
MAINTAINER Naoaki Obiki
ARG username="vagrant"
ARG password="vagrant"
ENV DEBIAN_FRONTEND noninteractive

# deal with slim variants not having man page directories (which causes "update-alternatives" to fail)
RUN if [ ! -d /usr/share/man/man1 ]; then \
        mkdir -p /usr/share/man/man1; \
    fi;

# provision
COPY provision.sh /
RUN /provision.sh

# sudo
RUN mkdir -p /home/$username/ci \
 && useradd -s /bin/bash -d /home/$username $username \
 && echo "$username:$password" | chpasswd \
 && echo ${username}' ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/$username \
 && chown -R $username:$username /home/$username

# langage & timezone
RUN locale-gen ja_JP.UTF-8 \
 && localedef -f UTF-8 -i ja_JP ja_JP \
 && update-locale LANG=ja_JP.UTF-8 \
 && update-locale LANGUAGE="ja_JP:ja" \
 && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:jp
ENV LC_ALL ja_JP.UTF-8

# vacuum
RUN apt clean \
 && apt autoclean \
 && rm -rf /tmp/*

# COPY bootstrap.sh /
CMD ["/bootstrap.sh"]
