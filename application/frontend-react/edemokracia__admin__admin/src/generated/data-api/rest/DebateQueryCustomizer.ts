import { QueryCustomizer } from '@judo/data-api-common';
import { Debate } from '../model/Debate';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByDebateStatus } from './FilterByDebateStatus';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface DebateQueryCustomizer extends QueryCustomizer<Debate> {
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
  status?: Array<FilterByDebateStatus>;
  closeAt?: Array<FilterByTimestamp>;
}
