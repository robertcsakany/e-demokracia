import { QueryCustomizer } from '@judo/data-api-common';
import { AdminPro } from '../model/AdminPro';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByInteger } from './FilterByInteger';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminProQueryCustomizer extends QueryCustomizer<AdminPro> {
  createdByName?: Array<FilterByString>;
  created?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  title?: Array<FilterByString>;
  upVotes?: Array<FilterByInteger>;
  downVotes?: Array<FilterByInteger>;
}
