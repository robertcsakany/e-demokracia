//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/Action.ts'
// Template name: actor/src/components-api/components/Action.ts
// Template file: actor/src/components-api/components/Action.ts.hbs

import { NamedElement } from './NamedElement';
import { LabeledElement } from './LabeledElement';

export type ConfirmationType = 'NONE' | 'CONDITIONAL' | 'MANDATORY';

export interface Action extends NamedElement, LabeledElement {
  confirmationType?: ConfirmationType | undefined;
}
