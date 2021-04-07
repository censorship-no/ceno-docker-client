FROM equalitie/ouinet:v0.9.9

COPY ouinet-client.conf ssl-inj-cert.pem \
     repo-templates/client/

VOLUME /var/opt/ouinet

ENTRYPOINT ["/opt/ouinet/ouinet", "client"]
