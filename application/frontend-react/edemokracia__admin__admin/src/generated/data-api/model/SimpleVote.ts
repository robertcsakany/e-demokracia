import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaSimpleVoteType } from './EdemokraciaSimpleVoteType';
import { UserStored } from './User';

export interface SimpleVote {
  created: Date;
  type: EdemokraciaSimpleVoteType;

  user?: null | UserStored;
}
export type SimpleVoteAttributes = 'created' | 'type';

export type SimpleVoteRelations = 'user';

export interface SimpleVoteStored extends JudoStored<SimpleVote>, SimpleVote {}
