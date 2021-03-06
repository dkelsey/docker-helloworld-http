FROM debian:jessie

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY main.sh /
RUN mkdir /www
RUN chgrp -R 0 /www && \
    chmod -R g=u /www
RUN echo PORT

EXPOSE 80

WORKDIR /www

ENTRYPOINT ["/main.sh" ]
CMD []
