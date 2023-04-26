import { QueryCustomizer } from '@judo/data-api-common';
import { AdminAdminPrincipalUser } from '../model/AdminAdminPrincipalUser';

import { FilterByString } from './FilterByString';
import { FilterByEmail } from './FilterByEmail';
import { FilterByPhone } from './FilterByPhone';
import { FilterByBoolean } from './FilterByBoolean';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminAdminPrincipalUserQueryCustomizer extends QueryCustomizer<AdminAdminPrincipalUser> {
  userName?: Array<FilterByString>;
  email?: Array<FilterByEmail>;
  firstName?: Array<FilterByString>;
  isAdmin?: Array<FilterByBoolean>;
  lastName?: Array<FilterByString>;
  phone?: Array<FilterByPhone>;
  created?: Array<FilterByTimestamp>;
}
