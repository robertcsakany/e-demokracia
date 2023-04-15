//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/form-utils.ts'
// Template name: actor/src/utilities/form-utils.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/utilities/form-utils.ts.hbs

import { format } from 'date-fns';

export const uiDateToServiceDate = (date?: any | null): string | null => {
  if (date === undefined || date === null) {
    return null;
  }

  const resolved: Date = typeof date === 'string' ? new Date(date) : date;

  return format(resolved, 'yyyy-MM-dd');
};

export const serviceDateToUiDate = (dateStr?: any) => {
  if (typeof dateStr === 'string') {
    return dateStr.endsWith('Z') ? dateStr : dateStr + 'Z';
  }
  return dateStr;
};
