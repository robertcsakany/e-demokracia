import { QueryCustomizer } from '@judo/data-api-common';
import { AdminVoteDefinition } from '../model/AdminVoteDefinition';

import { FilterByText } from './FilterByText';
import { FilterByString } from './FilterByString';
import { FilterByInteger } from './FilterByInteger';
import { FilterByVoteStatus } from './FilterByVoteStatus';
import { FilterByBoolean } from './FilterByBoolean';
import { FilterByVoteType } from './FilterByVoteType';
import { FilterByTimestamp } from './FilterByTimestamp';

export interface AdminVoteDefinitionQueryCustomizer extends QueryCustomizer<AdminVoteDefinition> {
  title?: Array<FilterByString>;
  created?: Array<FilterByTimestamp>;
  description?: Array<FilterByText>;
  status?: Array<FilterByVoteStatus>;
  closeAt?: Array<FilterByTimestamp>;
  isRatingType?: Array<FilterByBoolean>;
  isSelectAnswerType?: Array<FilterByBoolean>;
  isYesNoAbstainType?: Array<FilterByBoolean>;
  isYesNoType?: Array<FilterByBoolean>;
  isNotRatingType?: Array<FilterByBoolean>;
  isNotSelectAnswerType?: Array<FilterByBoolean>;
  isNotYesNoAbstainType?: Array<FilterByBoolean>;
  isNotYesNoType?: Array<FilterByBoolean>;
  numberOfVotes?: Array<FilterByInteger>;
  voteType?: Array<FilterByVoteType>;
}
