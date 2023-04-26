import { JudoStored } from '@judo/data-api-common';
import { VoteEntryStored } from './VoteEntry';
import { EdemokraciaVoteStatus } from './EdemokraciaVoteStatus';

export interface VoteDefinition {
  title: string;
  created: Date;
  description: string;
  status: EdemokraciaVoteStatus;
  closeAt: Date;
  isYesNoType?: null | boolean;
  isYesNoAbstainType?: null | boolean;
  isSelectAnswerType?: null | boolean;
  isRatingType?: null | boolean;

  voteEntries?: null | Array<VoteEntryStored>;
}
export type VoteDefinitionAttributes =
  | 'title'
  | 'created'
  | 'description'
  | 'status'
  | 'closeAt'
  | 'isYesNoType'
  | 'isYesNoAbstainType'
  | 'isSelectAnswerType'
  | 'isRatingType';

export type VoteDefinitionRelations = 'voteEntries';

export interface VoteDefinitionStored extends JudoStored<VoteDefinition>, VoteDefinition {}
