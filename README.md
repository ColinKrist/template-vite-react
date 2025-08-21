# React Template（⚡️）

⚡️ A minimal React Vite starter template.

## Preview

[![qekup8.png](https://s1.ax1x.com/2022/03/20/qekup8.png)](https://imgtu.com/i/qekup8)

## Getting Started

### Quick Setup

#### Step 1 - Clone the repo

```bash
npx degit ColinKrist/template-vite-react myapp

cd myapp

git init
```

#### Step 2 - Run setup (nvm, corepack, install)

##### macOS/Linux

```bash
# Run the setup script
./setup.sh
```

##### Windows

```cmd
# Run the setup script
setup.bat
```

---

### Prerequisites

- **Node.js 22** (specified in `.nvmrc`)
- **nvm** (Node Version Manager) - will be installed automatically on macOS/Linux
- **nvm-windows** - must be installed manually on Windows
- `git` should be installed (recommended v2.4.11 or higher)
- The setup script will automatically:
  - Install nvm (macOS/Linux) or guide you through nvm-windows installation (Windows)
  - Install Node.js 22 using nvm
  - Enable corepack and install pnpm
  - Install project dependencies

### Installing nvm-windows (Windows Users)

If you're on Windows and don't have nvm-windows installed:

1. Download the latest release from: <https://github.com/coreybutler/nvm-windows/releases>
2. Run the installer as Administrator
3. Restart your terminal/command prompt
4. Run `setup.bat` again

---

### Available scripts

#### `pnpm dev`

Runs the app in development mode.
Open <https://localhost:5173> to view it in the browser.

The page will automatically reload if you make changes to the code.
You will see the build errors and lint warnings in the console.

#### `pnpm build`

Builds the app for production to the `dist` folder.
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.

Your app is ready to be deployed.
