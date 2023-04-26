import { QueryCustomizer } from '@judo/data-api-common';
import { IssueCategory } from '../model/IssueCategory';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';

export interface IssueCategoryQueryCustomizer extends QueryCustomizer<IssueCategory> {
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
}
