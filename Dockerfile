# Dockerfile
FROM ubuntu:24.04

# Install dependencies
RUN apt update && apt install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set environment variable for GitHub release URL
ENV NEXUS_CLI_URL=https://github.com/nexus-xyz/nexus-cli/releases/latest/download/nexus-network-linux-x86_64

# Download nexus-cli binary
RUN curl -L $NEXUS_CLI_URL -o /usr/local/bin/nexus-cli && \
    chmod +x /usr/local/bin/nexus-cli

# Set entrypoint
ENTRYPOINT ["nexus-cli"]
