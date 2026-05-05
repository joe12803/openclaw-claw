#!/bin/bash
set -e

echo "🚀 Starting OpenClaw setup for Codespaces..."

# 1. 安装官方 OpenClaw
curl -fsSL https://openclaw.ai/install.sh | bash

# 2. 确保 openclaw 命令可用
export PATH="$HOME/.local/bin:$PATH"

# 3. 下载并安装 cloudflared
if ! command -v cloudflared &> /dev/null; then
    echo "📦 Installing Cloudflared..."
    curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
    sudo dpkg -i cloudflared.deb
    rm cloudflared.deb
fi

echo "----------------------------------------------------"
echo "💡 INSTRUCTIONS:"
echo "1. Run 'openclaw' in this terminal to start the interactive setup."
echo "2. After setup is complete, run 'openclaw gateway' to start the service."
echo "3. Run 'cloudflared tunnel --url http://localhost:18789' to get your public URL."
echo "----------------------------------------------------"
