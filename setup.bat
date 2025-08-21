@echo off
setlocal enabledelayedexpansion

echo 🚀 Setting up Template Vite React project...

REM Check if nvm is installed
where nvm >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ nvm-windows is not installed.
    echo.
    echo 📦 Please install nvm-windows manually:
    echo    1. Download from: https://github.com/coreybutler/nvm-windows/releases
    echo    2. Run the installer
    echo    3. Restart your terminal
    echo    4. Run this script again
    echo.
    pause
    exit /b 1
)

echo ✅ nvm-windows is installed

REM Check if .nvmrc exists
if not exist ".nvmrc" (
    echo ❌ No .nvmrc file found. Please create one with your desired Node.js version.
    pause
    exit /b 1
)

REM Read Node.js version from .nvmrc
set /p NODE_VERSION=<.nvmrc
echo 📋 Found .nvmrc with Node.js version: %NODE_VERSION%

REM Install and use the specified Node.js version
echo 📥 Installing Node.js %NODE_VERSION%...
nvm install %NODE_VERSION%
if %errorlevel% neq 0 (
    echo ❌ Failed to install Node.js %NODE_VERSION%
    pause
    exit /b 1
)

nvm use %NODE_VERSION%
if %errorlevel% neq 0 (
    echo ❌ Failed to use Node.js %NODE_VERSION%
    pause
    exit /b 1
)

echo ✅ Node.js %NODE_VERSION% is now active

REM Verify Node.js installation
echo 🔍 Verifying Node.js installation...
node --version
npm --version

REM Enable corepack
echo 📦 Enabling corepack...
corepack enable

REM Install dependencies using pnpm
echo 📥 Installing dependencies...
pnpm install

echo ✅ Setup complete! You can now run:
echo   pnpm dev    # Start development server
echo   pnpm build  # Build for production
echo   pnpm preview # Preview production build

pause
