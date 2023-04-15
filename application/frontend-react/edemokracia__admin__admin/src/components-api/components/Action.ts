//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/Action.ts'
// Template name: actor/src/components-api/components/Action.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components-api/components/Action.ts.hbs

import { NamedElement } from './NamedElement';
import { LabeledElement } from './LabeledElement';

export type ConfirmationType = 'NONE' | 'CONDITIONAL' | 'MANDATORY';

export interface Action extends NamedElement, LabeledElement {
  confirmationType?: ConfirmationType | undefined;
}
