FROM debian:stable-slim

RUN apt update && \
    apt install -y openvpn dante-server && \
    rm -rf /var/lib/apt/lists/*

COPY danted.conf /etc/

EXPOSE 1080

COPY dante-server.sh /usr/bin/
COPY docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
