ARG BUILD_FROM
FROM devincarr/cloudflared:ipv6 AS devincarr
FROM $BUILD_FROM

ENV LANG C.UTF-8

COPY --from=devincarr /usr/local/bin/cloudflared /usr/local/bin/cloudflared
RUN chmod a+x /usr/local/bin/cloudflared
RUN mkdir -p /etc/cloudflared
COPY data/config.yml /etc/cloudflared/
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
