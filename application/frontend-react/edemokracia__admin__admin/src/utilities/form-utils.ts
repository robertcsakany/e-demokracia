//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/form-utils.ts'
// Template name: actor/src/utilities/form-utils.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
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
    if (dateStr.match(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)) {
      return new Date(dateStr);
    }
    return new Date(dateStr.endsWith('Z') ? dateStr : dateStr + 'Z');
  }
  return dateStr;
};
