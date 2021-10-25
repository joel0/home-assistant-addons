ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
RUN chmod a+x /usr/local/bin/cloudflared
RUN mkdir -p /etc/cloudflared
COPY data/config.yml /etc/cloudflared/
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
