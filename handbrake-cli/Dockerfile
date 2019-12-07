FROM debian:buster

ENV movie video

RUN echo "deb http://www.deb-multimedia.org buster main non-free" > /etc/apt/sources.list.d/multimedia.list

RUN apt-get update -oAcquire::AllowInsecureRepositories=true
RUN apt-get install -y deb-multimedia-keyring -oAcquire::AllowInsecureRepositories=true --allow-unauthenticated
RUN apt-get update

RUN apt-get install -y handbrake-cli libdvdcss2

ENTRYPOINT []
