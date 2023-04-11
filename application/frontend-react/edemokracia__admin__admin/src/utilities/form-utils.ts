export const uiDateToServiceDate = (date?: any | null): string | null => {
  return date;
};

export const serviceDateToUiDate = (dateStr?: any) => {
  if (typeof dateStr === 'string') {
    return dateStr.endsWith('Z') ? dateStr : dateStr + 'Z';
  }
  return dateStr;
};
