import { QueryCustomizer } from '@judo/data-api-common';
import { Comment } from '../model/Comment';

import { FilterByText } from './FilterByText';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface CommentQueryCustomizer extends QueryCustomizer<Comment> {
  comment?: Array<FilterByText>;
  created?: Array<FilterByTimestamp>;
}
