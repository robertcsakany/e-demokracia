//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/auth/constants.ts'
// Template name: actor/src/auth/constants.t
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/auth/constants.ts.hbs

import { endWithSlash } from '../utilities';

const base = document.querySelector('base')!.getAttribute('href') as string;
export const appBaseUri = endWithSlash(window.location.origin + base);
