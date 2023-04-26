import { QueryCustomizer } from '@judo/data-api-common';
import { AdminUser } from '../model/AdminUser';

import { FilterByString } from './FilterByString';
import { FilterByEmail } from './FilterByEmail';
import { FilterByPhone } from './FilterByPhone';
import { FilterByBoolean } from './FilterByBoolean';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminUserQueryCustomizer extends QueryCustomizer<AdminUser> {
  firstName?: Array<FilterByString>;
  lastName?: Array<FilterByString>;
  phone?: Array<FilterByPhone>;
  email?: Array<FilterByEmail>;
  isAdmin?: Array<FilterByBoolean>;
  created?: Array<FilterByTimestamp>;
  userName?: Array<FilterByString>;
  representation?: Array<FilterByString>;
}
