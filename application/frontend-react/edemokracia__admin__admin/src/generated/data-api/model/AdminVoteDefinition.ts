import { JudoStored } from '@judo/data-api-common';
import { AdminDebateStored } from './AdminDebate';
import { EdemokraciaVoteStatus } from './EdemokraciaVoteStatus';

export interface AdminVoteDefinition {
  title: string;
  created: Date;
  description: string;
  status: EdemokraciaVoteStatus;
  closeAt: Date;
  isRatingType?: null | boolean;
  isSelectAnswerType?: null | boolean;
  isYesNoAbstainType?: null | boolean;
  isYesNoType?: null | boolean;
  isNotRatingType?: null | boolean;
  isNotSelectAnswerType?: null | boolean;
  isNotYesNoAbstainType?: null | boolean;
  isNotYesNoType?: null | boolean;

  debate?: null | AdminDebateStored;
}
export type AdminVoteDefinitionAttributes =
  | 'title'
  | 'created'
  | 'description'
  | 'status'
  | 'closeAt'
  | 'isRatingType'
  | 'isSelectAnswerType'
  | 'isYesNoAbstainType'
  | 'isYesNoType'
  | 'isNotRatingType'
  | 'isNotSelectAnswerType'
  | 'isNotYesNoAbstainType'
  | 'isNotYesNoType';

export type AdminVoteDefinitionRelations = 'debate';

export interface AdminVoteDefinitionStored extends JudoStored<AdminVoteDefinition>, AdminVoteDefinition {}
