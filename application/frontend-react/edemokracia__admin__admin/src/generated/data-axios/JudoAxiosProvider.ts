import { AxiosInstance } from 'axios';
import { AxiosProvider, JudoAxiosProviderInitData } from './AxiosProvider';

export class JudoAxiosProvider implements AxiosProvider {
  private axios?: AxiosInstance;
  private basePathFactory?: () => string;
  private filePathFactory?: () => string;

  init(data: JudoAxiosProviderInitData): void {
    this.axios = data.axios;
    this.basePathFactory = data.basePathFactory;
    this.filePathFactory = data.filePathFactory;
  }

  getAxios(): AxiosInstance {
    if (!this.axios) {
      throw new Error('[JudoAxiosProvider] Axios instance has not been set yet. Please init() the provider first!');
    }
    return this.axios;
  }

  getBasePath(suffix?: string): string {
    let base = typeof this.basePathFactory !== 'function' ? '/edemokracia::admin::Admin' : this.basePathFactory();
    base = base.replace(/\/+$/, '');

    return base + (suffix ? '/' + suffix : '');
  }

  getFilePath(suffix?: string): string {
    let base = typeof this.filePathFactory !== 'function' ? '/edemokracia::admin::Admin' : this.filePathFactory();
    base = base.replace(/\/+$/, '');

    return base + (suffix ? '/' + suffix : '');
  }
}

export const judoAxiosProvider: AxiosProvider = new JudoAxiosProvider();
