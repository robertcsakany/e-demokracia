//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/custom/custom-element-types.ts'
// Template name: actor/src/custom/custom-element-types.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/custom/custom-element-types.ts.hbs

import type { FC } from 'react';

export const CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY = 'CustomVisualElement';

export interface CustomFormVisualElementProps<T> {
  /**
   * Full-blown state object on pages.
   */
  readonly data: T;

  /**
   * A Map which stores validation errors and info for fields. Keys are the field names, and values are the validation
   * error info.
   */
  readonly validation: Map<keyof T, string>;

  /**
   * Flag representing whether the host page is in edit or view mode.
   */
  readonly editMode: boolean;

  /**
   * The "payloadDiff" is a `Record` where we only store changes applied to the state, and not the state as a whole.
   * We are usually only sending this "diffed" payload on CRUD Update operations.
   */
  readonly payloadDiff: Record<keyof T, any>;

  /**
   * State modifier method which implicitly updates the `data` and adds an entry to the `payloadDiff` as well.
   *
   * It is highly recommended to use this method to update the data/state  on pages in order to be consistent with the
   * framework and reduce erroneous behaviour.
   */
  storeDiff: (attributeName: keyof T, value: any) => void;
}
