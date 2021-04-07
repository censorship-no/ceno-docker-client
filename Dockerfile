ARG OUINET_VERSION=latest
FROM equalitie/ouinet:${OUINET_VERSION}

COPY ouinet-client.conf ssl-inj-cert.pem \
     repo-templates/client/

VOLUME /var/opt/ouinet

ENTRYPOINT ["/opt/ouinet/ouinet", "client"]
