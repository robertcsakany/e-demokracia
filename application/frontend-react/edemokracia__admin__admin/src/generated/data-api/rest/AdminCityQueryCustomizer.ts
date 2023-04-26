import { QueryCustomizer } from '@judo/data-api-common';
import { AdminCity } from '../model/AdminCity';

import { FilterByString } from './FilterByString';

export interface AdminCityQueryCustomizer extends QueryCustomizer<AdminCity> {
  name?: Array<FilterByString>;
  county?: Array<FilterByString>;
  representation?: Array<FilterByString>;
}
