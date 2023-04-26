import { QueryCustomizer } from '@judo/data-api-common';
import { AdminDistrict } from '../model/AdminDistrict';

import { FilterByString } from './FilterByString';

export interface AdminDistrictQueryCustomizer extends QueryCustomizer<AdminDistrict> {
  name?: Array<FilterByString>;
  county?: Array<FilterByString>;
  city?: Array<FilterByString>;
  representation?: Array<FilterByString>;
}
