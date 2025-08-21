#!/bin/bash

# Template Vite React Setup Script
# This script installs nvm, Node.js, and project dependencies

set -e

echo "🚀 Setting up Template Vite React project..."

# Detect operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
    PLATFORM="macos"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    PLATFORM="windows"
else
    PLATFORM="linux"
fi

echo "🖥️  Detected platform: $PLATFORM"

# Function to install nvm
install_nvm() {
    if command -v nvm &> /dev/null; then
        echo "✅ nvm is already installed"
        return 0
    fi

    echo "📦 Installing nvm..."

    if [[ "$PLATFORM" == "macos" ]]; then
        # Install nvm on macOS
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    elif [[ "$PLATFORM" == "windows" ]]; then
        # Install nvm-windows
        echo "⚠️  For Windows, please install nvm-windows manually:"
        echo "   1. Download from: https://github.com/coreybutler/nvm-windows/releases"
        echo "   2. Run the installer"
        echo "   3. Restart your terminal"
        echo "   4. Run this script again"
        exit 1
    else
        # Install nvm on Linux
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    fi
}

# Function to install Node.js using nvm
install_node() {
    if [[ -f ".nvmrc" ]]; then
        NODE_VERSION=$(cat .nvmrc)
        echo "📋 Found .nvmrc with Node.js version: $NODE_VERSION"

        # Source nvm if not already sourced
        if ! command -v nvm &> /dev/null; then
            export NVM_DIR="$HOME/.nvm"
            [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        fi

        # Install and use the specified Node.js version
        echo "📥 Installing Node.js $NODE_VERSION..."
        nvm install $NODE_VERSION
        nvm use $NODE_VERSION
        nvm alias default $NODE_VERSION

        echo "✅ Node.js $NODE_VERSION is now active"
    else
        echo "❌ No .nvmrc file found. Please create one with your desired Node.js version."
        exit 1
    fi
}

# Install nvm
install_nvm

# Install Node.js
install_node

# Verify Node.js installation
echo "🔍 Verifying Node.js installation..."
node --version
npm --version

# Enable corepack to ensure consistent package manager usage
echo "📦 Enabling corepack..."
corepack enable

# Install dependencies using pnpm
echo "📥 Installing dependencies..."
pnpm install

echo "✅ Setup complete! You can now run:"
echo "  pnpm dev    # Start development server"
echo "  pnpm build  # Build for production"
echo "  pnpm preview # Preview production build"
