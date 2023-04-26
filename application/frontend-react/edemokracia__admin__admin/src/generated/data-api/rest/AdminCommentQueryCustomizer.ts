import { QueryCustomizer } from '@judo/data-api-common';
import { AdminComment } from '../model/AdminComment';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByInteger } from './FilterByInteger';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminCommentQueryCustomizer extends QueryCustomizer<AdminComment> {
  comment?: Array<FilterByText>;
  created?: Array<FilterByTimestamp>;
  createdByName?: Array<FilterByString>;
  upVotes?: Array<FilterByInteger>;
  downVotes?: Array<FilterByInteger>;
}
