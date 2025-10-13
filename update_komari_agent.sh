#!/bin/bash
set -e

# Path to the service file
SERVICE_FILE="/etc/systemd/system/komari-agent-rs.service"

# Extract the token using awk and remove any empty lines
TOKEN=$(awk -F'--token "' '{print $2}' "$SERVICE_FILE" | awk -F'"' '{print $1}' | tr -d '\n')

# Check if the token was found
if [ -z "$TOKEN" ]; then
    echo "Error: Token not found in $SERVICE_FILE"
    exit 1
fi

echo "Token found: $TOKEN"

# Remove the old binary before proceeding
rm -rf /usr/local/bin/komari-monitor-rs

# Run the installation script directly with the token
bash <(curl -sL "https://ghfast.top/https://raw.githubusercontent.com/GenshinMinecraft/komari-monitor-rs/refs/heads/main/install.sh") \
  --http-server "https://tz.as9929.com:443" \
  --ws-server "wss://tz.as9929.com:443" \
  --terminal \
  --token "$TOKEN"
