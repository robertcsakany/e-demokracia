import { QueryCustomizer } from '@judo/data-api-common';
import { District } from '../model/District';

import { FilterByString } from './FilterByString';

export interface DistrictQueryCustomizer extends QueryCustomizer<District> {
  name?: Array<FilterByString>;
}
