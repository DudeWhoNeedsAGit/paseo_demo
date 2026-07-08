#!/bin/bash

# 1. Setup OpenCode Authentication using the env variable from your .env file
mkdir -p /data
touch /data/opencode.db

mkdir -p /root/.local/share/opencode

# 2. Start OpenCode server in the background
# Binding to 0.0.0.0 allows it to be accessed from outside the container
echo "Starting OpenCode Serve..."
opencode serve --port 4096 --hostname 0.0.0.0 &

# 3. Start Paseo daemon in the foreground (keeps container alive)
echo "Starting Paseo Daemon..."
exec paseo daemon start --foreground --listen 0.0.0.0:6767
