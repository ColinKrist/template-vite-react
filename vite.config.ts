import { defineConfig } from "vite";
import react from "@vitejs/plugin-react-swc";
import tsPaths from "vite-tsconfig-paths";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  server: {
    port: 5173,
  },
  plugins: [react(), tsPaths(), tailwindcss()],
});
