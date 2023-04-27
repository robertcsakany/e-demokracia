//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/custom/interfaces.ts'
// Template name: actor/src/custom/interfaces.ts
// Template file: actor/src/custom/interfaces.ts.hbs

import type { BundleContext } from '@pandino/pandino-api';

export interface ApplicationCustomizer {
  customize(context: BundleContext): Promise<void>;
}
