//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/Button.ts'
// Template name: actor/src/components-api/components/Button.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/components-api/components/Button.ts.hbs

import { Action } from './Action';
import { ReferenceTypedVisualElement } from './ReferenceTypedVisualElement';
import { VisualElement } from './VisualElement';

export interface Button extends VisualElement, ReferenceTypedVisualElement {
  action: Action;
}
