#!/bin/bash

dante-server.sh &

openvpn --config /home/${OVPN_FILE}
