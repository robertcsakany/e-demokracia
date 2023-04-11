/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly VITE_API_DEFAULT_BASE_URL: string;
  readonly VITE_FILE_DEFAULT_BASE_URL: string;
  readonly VITE_API_RELATIVE_PATH?: string;
  // more env variables...
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
