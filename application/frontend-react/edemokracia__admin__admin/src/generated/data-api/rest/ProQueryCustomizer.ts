import { QueryCustomizer } from '@judo/data-api-common';
import { Pro } from '../model/Pro';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface ProQueryCustomizer extends QueryCustomizer<Pro> {
  description?: Array<FilterByText>;
  created?: Array<FilterByTimestamp>;
  title?: Array<FilterByString>;
}
