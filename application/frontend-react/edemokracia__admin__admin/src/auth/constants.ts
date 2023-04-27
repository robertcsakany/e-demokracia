//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/auth/constants.ts'
// Template name: actor/src/auth/constants.t
// Template file: actor/src/auth/constants.ts.hbs

import { endWithSlash } from '../utilities';

const base = document.querySelector('base')!.getAttribute('href') as string;
export const appBaseUri = endWithSlash(window.location.origin + base);
