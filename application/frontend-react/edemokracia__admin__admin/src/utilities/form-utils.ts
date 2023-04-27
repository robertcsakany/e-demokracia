//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/form-utils.ts'
// Template name: actor/src/utilities/form-utils.ts
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
    return new Date(dateStr);
  }
  return dateStr;
};

export const uiTimeToServiceTime = (time?: any | null): string | null => {
  if (time === undefined || time === null) {
    return null;
  }
  const resolved: Date = typeof time === 'string' ? new Date(time) : time;
  return (
    resolved.getUTCHours().toString().padStart(2, '0') + ':' + resolved.getUTCMinutes().toString().padStart(2, '0')
  );
};

export const serviceTimeToUiTime = (timeStr?: any) => {
  if (typeof timeStr === 'string') {
    let splittedTime = timeStr.split(':');
    let date: Date = new Date();
    date.setHours(Number(splittedTime[0]) - date.getTimezoneOffset() / 60, Number(splittedTime[1]));
    return date;
  }
  return timeStr;
};
