import { Button } from './Button';
import { VisualElement } from './VisualElement';

export interface ActionGroup extends VisualElement {
  featuredActions: number;
  actions: Array<Button>;
}
