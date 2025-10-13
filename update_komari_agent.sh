#!/bin/bash
set -e

# Path to the service file
SERVICE_FILE="/etc/systemd/system/komari-agent-rs.service"

# Extract the token value
TOKEN=$(grep -oP '(?<=--token\s+")[^"]+' "$SERVICE_FILE")

# Check if the token was found
if [ -z "$TOKEN" ]; then
    echo "Error: Token not found in $SERVICE_FILE"
    exit 1
fi

echo "Token found: $TOKEN"

# Run the installation script directly with the token
bash <(curl -sL "https://ghfast.top/https://raw.githubusercontent.com/GenshinMinecraft/komari-monitor-rs/refs/heads/main/install.sh") \
  --http-server "https://tz.as9929.com:443" \
  --ws-server "wss://tz.as9929.com:443" \
  --terminal \
  --token "$TOKEN"
