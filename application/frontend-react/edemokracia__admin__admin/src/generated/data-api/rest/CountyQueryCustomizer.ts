import { QueryCustomizer } from '@judo/data-api-common';
import { County } from '../model/County';

import { FilterByString } from './FilterByString';

export interface CountyQueryCustomizer extends QueryCustomizer<County> {
  name?: Array<FilterByString>;
}
