import { QueryCustomizer } from '@judo/data-api-common';
import { AdminSimpleVote } from '../model/AdminSimpleVote';

import { FilterBySimpleVoteType } from './FilterBySimpleVoteType';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminSimpleVoteQueryCustomizer extends QueryCustomizer<AdminSimpleVote> {
  created?: Array<FilterByTimestamp>;
  type?: Array<FilterBySimpleVoteType>;
}
