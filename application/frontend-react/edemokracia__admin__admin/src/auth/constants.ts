import { endWithSlash } from '../utilities';

const base = document.querySelector('base')!.getAttribute('href') as string;
export const appBaseUri = endWithSlash(window.location.origin + base);
