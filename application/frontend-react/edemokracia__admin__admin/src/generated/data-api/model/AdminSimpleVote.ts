import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaSimpleVoteType } from './EdemokraciaSimpleVoteType';
import { AdminUserStored } from './AdminUser';

export interface AdminSimpleVote {
  created: Date;
  type: EdemokraciaSimpleVoteType;

  user?: null | AdminUserStored;
}
export type AdminSimpleVoteAttributes = 'created' | 'type';

export type AdminSimpleVoteRelations = 'user';

export interface AdminSimpleVoteStored extends JudoStored<AdminSimpleVote>, AdminSimpleVote {}
