import { QueryCustomizer } from '@judo/data-api-common';
import { IssueType } from '../model/IssueType';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByVoteType } from './FilterByVoteType';

export interface IssueTypeQueryCustomizer extends QueryCustomizer<IssueType> {
  title?: Array<FilterByString>;
  description?: Array<FilterByText>;
  defaultVoteType?: Array<FilterByVoteType>;
}
