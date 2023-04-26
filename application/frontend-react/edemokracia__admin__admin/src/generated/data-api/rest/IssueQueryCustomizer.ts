import { QueryCustomizer } from '@judo/data-api-common';
import { Issue } from '../model/Issue';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByIssueStatus } from './FilterByIssueStatus';
import { FilterByVoteType } from './FilterByVoteType';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface IssueQueryCustomizer extends QueryCustomizer<Issue> {
  created?: Array<FilterByTimestamp>;
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
  status?: Array<FilterByIssueStatus>;
  defaultVoteType?: Array<FilterByVoteType>;
}
