#!/bin/bash

wget https://github.com/GenshinMinecraft/komari-monitor-rs/releases/download/latest/komari-monitor-rs-linux-x86_64-gnu
rm -rf /usr/local/bin/komari-monitor-rs
mv komari-monitor-rs-linux-x86_64-gnu /usr/local/bin/komari-monitor-rs
systemctl restart komari-agent-rs
