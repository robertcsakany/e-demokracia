import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  base: '',
  build: {
    rollupOptions: {
      output: {
        manualChunks: {
          '@mui/material': ['@mui/material'],
          '@mui/x-data-grid': ['@mui/x-data-grid'],
          '@mui/x-date-pickers': ['@mui/x-date-pickers'],
          'axios': ['axios'],
          'oidc-client-ts': ['oidc-client-ts'],
          'uuid': ['uuid'],
        },
      },
    },
  },
  plugins: [
      react(),
  ],
});
