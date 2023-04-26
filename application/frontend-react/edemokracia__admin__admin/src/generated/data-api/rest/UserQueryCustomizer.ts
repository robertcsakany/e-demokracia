import { QueryCustomizer } from '@judo/data-api-common';
import { User } from '../model/User';

import { FilterByString } from './FilterByString';
import { FilterByEmail } from './FilterByEmail';
import { FilterByPhone } from './FilterByPhone';
import { FilterByBoolean } from './FilterByBoolean';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface UserQueryCustomizer extends QueryCustomizer<User> {
  userName?: Array<FilterByString>;
  firstName?: Array<FilterByString>;
  lastName?: Array<FilterByString>;
  phone?: Array<FilterByPhone>;
  email?: Array<FilterByEmail>;
  isAdmin?: Array<FilterByBoolean>;
  created?: Array<FilterByTimestamp>;
}
