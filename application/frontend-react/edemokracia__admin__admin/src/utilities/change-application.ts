import type { HandleApplicationChange } from './interfaces';

export const changeApplication: HandleApplicationChange = (applicationKey: string) => {
  const { pathname, origin } = window.location;
  const base = pathname.startsWith('/') ? pathname.substring(1) : pathname;
  const root: string = base.substring(0, base.indexOf('/'));

  window.location.href = origin + '/' + root + '/' + applicationKey;
};
