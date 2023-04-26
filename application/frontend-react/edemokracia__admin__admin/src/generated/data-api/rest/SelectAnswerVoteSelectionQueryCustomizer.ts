import { QueryCustomizer } from '@judo/data-api-common';
import { SelectAnswerVoteSelection } from '../model/SelectAnswerVoteSelection';

import { FilterByString } from './FilterByString';

export interface SelectAnswerVoteSelectionQueryCustomizer extends QueryCustomizer<SelectAnswerVoteSelection> {
  title?: Array<FilterByString>;
  description?: Array<FilterByString>;
}
