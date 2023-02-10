import type { Dayjs } from 'dayjs';

export const uiDateToServiceDate = (date?: Dayjs | null): string | null => {
  return date ? date.format().substring(0, 10) : null;
};
