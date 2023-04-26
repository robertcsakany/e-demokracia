import { QueryCustomizer } from '@judo/data-api-common';
import { AdminIssueDebate } from '../model/AdminIssueDebate';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByDebateStatus } from './FilterByDebateStatus';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminIssueDebateQueryCustomizer extends QueryCustomizer<AdminIssueDebate> {
  closeAt?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  status?: Array<FilterByDebateStatus>;
  title?: Array<FilterByString>;
}
