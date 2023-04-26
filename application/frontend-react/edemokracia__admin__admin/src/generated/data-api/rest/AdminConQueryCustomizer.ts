import { QueryCustomizer } from '@judo/data-api-common';
import { AdminCon } from '../model/AdminCon';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByInteger } from './FilterByInteger';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminConQueryCustomizer extends QueryCustomizer<AdminCon> {
  createdByName?: Array<FilterByString>;
  created?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  title?: Array<FilterByString>;
  upVotes?: Array<FilterByInteger>;
  downVotes?: Array<FilterByInteger>;
}
