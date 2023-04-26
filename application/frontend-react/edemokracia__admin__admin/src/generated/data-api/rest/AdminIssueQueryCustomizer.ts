import { QueryCustomizer } from '@judo/data-api-common';
import { AdminIssue } from '../model/AdminIssue';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByInteger } from './FilterByInteger';
import { FilterByIssueStatus } from './FilterByIssueStatus';
import { FilterByVoteType } from './FilterByVoteType';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminIssueQueryCustomizer extends QueryCustomizer<AdminIssue> {
  created?: Array<FilterByTimestamp>;
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
  status?: Array<FilterByIssueStatus>;
  representation?: Array<FilterByString>;
  numberOfDebates?: Array<FilterByInteger>;
  defaultVoteType?: Array<FilterByVoteType>;
}
