import { QueryCustomizer } from '@judo/data-api-common';
import { VoteEntry } from '../model/VoteEntry';

import { FilterByTimestamp } from './FilterByTimestamp';

export interface VoteEntryQueryCustomizer extends QueryCustomizer<VoteEntry> {
  created?: Array<FilterByTimestamp>;
}
