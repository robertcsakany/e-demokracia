import { QueryCustomizer } from '@judo/data-api-common';
import { AdminIssueCategory } from '../model/AdminIssueCategory';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';

export interface AdminIssueCategoryQueryCustomizer extends QueryCustomizer<AdminIssueCategory> {
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
}
