import { Action } from './Action';
import { ReferenceTypedVisualElement } from './ReferenceTypedVisualElement';
import { VisualElement } from './VisualElement';

export interface Button extends VisualElement, ReferenceTypedVisualElement {
  action: Action;
}
