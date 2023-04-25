//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/query-customizer-processor.ts'
// Template name: actor/src/utilities/query-customizer-processor.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/utilities/query-customizer-processor.ts.hbs

import { QueryCustomizer } from '@judo/data-api-common';
import { exists, simpleCloneDeep } from './helper';

export function processQueryCustomizer<T>(queryCustomizer: T): T {
  const clone: any = simpleCloneDeep(queryCustomizer);

  if (typeof clone !== 'object') {
    return clone;
  }

  const fields = Object.keys(clone).filter((k) => {
    const value: any = (clone as any)[k];
    if (Array.isArray(value) && value.length) {
      const firstItem = value[0];
      const valueKeys: string[] = typeof firstItem === 'object' ? Object.keys(firstItem) : [];
      return valueKeys.length && valueKeys.includes('operator') && valueKeys.includes('value');
    }
    return false;
  });

  for (const field of fields) {
    const filters: any[] = (clone as any)[field];

    filters.forEach((filter: any, index: number) => {
      if (exists(filter.value) && filter.operator === 'like') {
        (clone as any)[field][index] = {
          ...filter,
          value: '%' + filter.value + '%',
        };
      }
    });
  }

  return clone;
}
