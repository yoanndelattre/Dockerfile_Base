FROM debian
MAINTAINER Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git apt-utils automake cron curl dpkg make man-db nano tar unzip vim software-properties-common wget zip -y
ENV TZ Europe/Paris
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN git config --global user.email "yoanndelattre21@gmail.com"
RUN git config --global user.name "ImWargame"
VOLUME ["/mnt"]
EXPOSE 80 443
WORKDIR  /mnt
ENTRYPOINT apt-get update && apt-get upgrade -y && /bin/bash
#
