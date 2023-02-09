import type { AxiosRequestConfig } from 'axios';
import { User } from 'oidc-client-ts';

const securityStore: { authority?: string; clientId?: string } = {};

export function storeMeta(meta: any): void {
  securityStore.authority = meta.issuer;
  securityStore.clientId = meta.clientId;
}

export function getUser(): any {
  const { authority, clientId } = securityStore;

  const oidcStorage = window.sessionStorage.getItem(`oidc.user:${authority!}:${clientId!}`);
  if (!oidcStorage) {
    return null;
  }

  return User.fromStorageString(oidcStorage);
}

export const axiosRequestInterceptor = (config: AxiosRequestConfig) => {
  try {
    if (!config.url?.endsWith('~meta')) {
      const user = getUser();
      const accessToken = user?.access_token;

      if (accessToken && config.headers) {
        config.headers!.Authorization = `Bearer ${accessToken}`;
      }
    }
  } catch (_) {}

  return config;
};
