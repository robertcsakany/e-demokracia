import { QueryCustomizer } from '@judo/data-api-common';
import { AdminDashboard } from '../model/AdminDashboard';

import { FilterByString } from './FilterByString';

export interface AdminDashboardQueryCustomizer extends QueryCustomizer<AdminDashboard> {
  welcome?: Array<FilterByString>;
}
