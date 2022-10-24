#!/bin/bash

dante-server.sh &

openvpn --config /home/client.ovpn
