FROM alpine:3.7
MAINTAINER Sean Lang <slang800@gmail.com>

RUN apk add --update tinc && rm -rf /var/cache/apk/*

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["/usr/sbin/tincd", "-D"]
CMD ["start", "-U", "nobody"]
