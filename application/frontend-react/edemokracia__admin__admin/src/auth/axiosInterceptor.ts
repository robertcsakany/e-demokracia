//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/auth/axiosInterceptor.ts'
// Template name: actor/src/auth/axiosInterceptor.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/auth/axiosInterceptor.ts.hbs

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
