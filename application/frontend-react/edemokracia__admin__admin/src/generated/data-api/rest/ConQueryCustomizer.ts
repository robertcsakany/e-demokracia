import { QueryCustomizer } from '@judo/data-api-common';
import { Con } from '../model/Con';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface ConQueryCustomizer extends QueryCustomizer<Con> {
  description?: Array<FilterByText>;
  created?: Array<FilterByTimestamp>;
  title?: Array<FilterByString>;
}
