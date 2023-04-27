import { QueryCustomizer } from '@judo/data-api-common';
import { AdminVoteEntry } from '../model/AdminVoteEntry';

import { FilterByString } from './FilterByString';
import { FilterByVoteStatus } from './FilterByVoteStatus';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminVoteEntryQueryCustomizer extends QueryCustomizer<AdminVoteEntry> {
  created?: Array<FilterByTimestamp>;
  issueTitle?: Array<FilterByString>;
  debateTitle?: Array<FilterByString>;
  voteTitle?: Array<FilterByString>;
  voteStatus?: Array<FilterByVoteStatus>;
  userName?: Array<FilterByString>;
}
