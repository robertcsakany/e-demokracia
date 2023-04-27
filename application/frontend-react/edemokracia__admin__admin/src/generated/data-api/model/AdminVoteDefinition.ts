import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaVoteType } from './EdemokraciaVoteType';
import { AdminIssueStored } from './AdminIssue';
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
  numberOfVotes?: null | number;
  voteType?: null | EdemokraciaVoteType;

  debate?: null | AdminDebateStored;
  issue?: null | AdminIssueStored;
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
  | 'isNotYesNoType'
  | 'numberOfVotes'
  | 'voteType';

export type AdminVoteDefinitionRelations = 'debate' | 'issue';

export interface AdminVoteDefinitionStored extends JudoStored<AdminVoteDefinition>, AdminVoteDefinition {}
