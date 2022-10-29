#!/bin/sh

docker run \
	--rm \
	--name openvpn-client \
	--cap-add=NET_ADMIN \
	--device=/dev/net/tun \
	--dns=8.8.8.8 \
	--dns=8.8.4.4 \
	-it \
	-p 1080:1080 \
	-v $(pwd)/config:/home \
	-e OVPN_FILE='client.ovpn' \
	openvpn-client
