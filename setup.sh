#!/bin/bash

# Template Vite React Setup Script
# This script enables corepack and installs dependencies for the interview

set -e

echo "🚀 Setting up Template Vite React project..."

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
