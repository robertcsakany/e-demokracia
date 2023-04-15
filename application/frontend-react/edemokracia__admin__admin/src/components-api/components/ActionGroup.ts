//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/ActionGroup.ts'
// Template name: actor/src/components-api/components/ActionGroup.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components-api/components/ActionGroup.ts.hbs

import { Button } from './Button';
import { VisualElement } from './VisualElement';

export interface ActionGroup extends VisualElement {
  featuredActions: number;
  actions: Array<Button>;
}
