import { QueryCustomizer } from '@judo/data-api-common';
import { AdminCounty } from '../model/AdminCounty';

import { FilterByString } from './FilterByString';

export interface AdminCountyQueryCustomizer extends QueryCustomizer<AdminCounty> {
  name?: Array<FilterByString>;
  representation?: Array<FilterByString>;
}
