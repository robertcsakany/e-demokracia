import { AxiosInstance } from 'axios';

export interface JudoAxiosProviderInitData {
  axios: AxiosInstance;
  basePathFactory?: () => string;
  filePathFactory?: () => string;
}

export interface AxiosProvider {
  init(data: JudoAxiosProviderInitData): void;
  getAxios(): AxiosInstance;
  getBasePath(suffix?: string): string;
  getFilePath(suffix?: string): string;
}
