FROM node:22-bookworm

RUN apt-get update && apt-get install -y sqlite3 \
    && rm -rf /var/lib/apt/lists/*

# Bash is already included in bookworm, but we ensure our global packages are installed
RUN npm install -g @getpaseo/cli opencode-ai

WORKDIR /workspace

# Copy the startup script
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Use the script to launch both services
CMD ["/usr/local/bin/start.sh"]
