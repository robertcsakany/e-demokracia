import { NamedElement } from './NamedElement';
import { LabeledElement } from './LabeledElement';

export type ConfirmationType = 'NONE' | 'CONDITIONAL' | 'MANDATORY';

export interface Action extends NamedElement, LabeledElement {
  confirmationType?: ConfirmationType | undefined;
}
