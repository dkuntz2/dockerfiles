FROM debian:stretch

ENV movie video
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y gnupg apt-transport-https

RUN echo "deb https://ramses.hjramses.com/deb/makemkv stretch main" > /etc/apt/sources.list.d/makemkv.list
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 9E5738E866C5E6B2

RUN apt-get update
RUN apt-get install -y makemkv-oss makemkv-bin

COPY runner /runner
RUN chmod +x /runner

VOLUME ["/output"]

ENTRYPOINT []
CMD /runner
