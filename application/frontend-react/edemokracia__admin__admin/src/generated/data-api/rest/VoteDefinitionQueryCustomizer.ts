import { QueryCustomizer } from '@judo/data-api-common';
import { VoteDefinition } from '../model/VoteDefinition';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByVoteStatus } from './FilterByVoteStatus';
import { FilterByBoolean } from './FilterByBoolean';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface VoteDefinitionQueryCustomizer extends QueryCustomizer<VoteDefinition> {
  title?: Array<FilterByString>;
  created?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  status?: Array<FilterByVoteStatus>;
  closeAt?: Array<FilterByTimestamp>;
  isYesNoType?: Array<FilterByBoolean>;
  isYesNoAbstainType?: Array<FilterByBoolean>;
  isSelectAnswerType?: Array<FilterByBoolean>;
  isRatingType?: Array<FilterByBoolean>;
}
