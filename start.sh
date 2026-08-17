#!/bin/sh

set -e

PORT="${PORT:-10000}"

sed -i "s/\"port\": 10000/\"port\": ${PORT}/" /etc/xray/config.json

echo "Starting Xray on 0.0.0.0:${PORT}"
echo "gRPC service: vpn"

exec /usr/local/bin/xray -config /etc/xray/config.json
