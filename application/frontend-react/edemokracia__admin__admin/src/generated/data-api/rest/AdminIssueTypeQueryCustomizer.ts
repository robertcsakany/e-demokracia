import { QueryCustomizer } from '@judo/data-api-common';
import { AdminIssueType } from '../model/AdminIssueType';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByVoteType } from './FilterByVoteType';

export interface AdminIssueTypeQueryCustomizer extends QueryCustomizer<AdminIssueType> {
  description?: Array<FilterByText>;
  title?: Array<FilterByString>;
  voteType?: Array<FilterByVoteType>;
  representation?: Array<FilterByString>;
}
