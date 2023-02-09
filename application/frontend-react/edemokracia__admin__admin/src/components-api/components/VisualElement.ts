import { NamedElement } from './NamedElement';
import { LabeledElement } from './LabeledElement';

export interface VisualElement extends NamedElement, LabeledElement {
  disabled?: boolean | undefined;
  readonly?: boolean | undefined;
  hiddenBy?: string | undefined;
  enabledBy?: string | undefined;
}
