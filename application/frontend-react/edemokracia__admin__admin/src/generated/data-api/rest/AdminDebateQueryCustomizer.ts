import { QueryCustomizer } from '@judo/data-api-common';
import { AdminDebate } from '../model/AdminDebate';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByDebateStatus } from './FilterByDebateStatus';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminDebateQueryCustomizer extends QueryCustomizer<AdminDebate> {
  closeAt?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  status?: Array<FilterByDebateStatus>;
  title?: Array<FilterByString>;
  issueTitle?: Array<FilterByString>;
}
