#!/usr/bin/with-contenv bashio

TUNNEL=$(bashio::config 'tunnel_name')
CREDENTIALS=$(bashio::config 'credentials_file_contents')
IP_VERSION=$(bashio::config 'ip_version')

sed -i "s/%%TUNNEL%%/$TUNNEL/g" /etc/cloudflared/config.yml
echo "${CREDENTIALS}" > /etc/cloudflared/credentials.json

cloudflared tunnel --no-autoupdate --edge-ip-version ${IP_VERSION} run
