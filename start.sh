#!/bin/sh

docker run \
	--rm \
	--name openvpn-client \
	--cap-add=NET_ADMIN \
	--device /dev/net/tun \
	-it \
	-p 1080:1080 \
	-v $(pwd)/config:/home \
	openvpn-client
