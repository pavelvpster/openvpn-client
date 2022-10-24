# openvpn-client

This repository contains OpenVPN client Docker files

## How to run it

Build Docker image:
```shell
docker build -t openvpn-client .
```

Copy configuration files into `config` directory

OVPN file has to be named `client.ovpn`

Create and run the container:
```shell
./start.sh
```
