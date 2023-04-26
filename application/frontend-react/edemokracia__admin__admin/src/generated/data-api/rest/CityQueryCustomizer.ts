import { QueryCustomizer } from '@judo/data-api-common';
import { City } from '../model/City';

import { FilterByString } from './FilterByString';

export interface CityQueryCustomizer extends QueryCustomizer<City> {
  name?: Array<FilterByString>;
}
