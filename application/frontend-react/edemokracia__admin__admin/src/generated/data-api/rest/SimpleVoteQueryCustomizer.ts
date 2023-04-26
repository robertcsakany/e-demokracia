import { QueryCustomizer } from '@judo/data-api-common';
import { SimpleVote } from '../model/SimpleVote';

import { FilterBySimpleVoteType } from './FilterBySimpleVoteType';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface SimpleVoteQueryCustomizer extends QueryCustomizer<SimpleVote> {
  created?: Array<FilterByTimestamp>;
  type?: Array<FilterBySimpleVoteType>;
}
