import { JudoStored } from '@judo/data-api-common';
import { AdminUserStored } from './AdminUser';
import { AdminSimpleVoteStored } from './AdminSimpleVote';

export interface AdminComment {
  comment: string;
  created?: null | Date;
  createdByName?: null | string;
  upVotes?: null | number;
  downVotes?: null | number;

  votes?: null | Array<AdminSimpleVoteStored>;
  createdBy?: null | AdminUserStored;
}
export type AdminCommentAttributes = 'comment' | 'created' | 'createdByName' | 'upVotes' | 'downVotes';

export type AdminCommentRelations = 'votes' | 'createdBy';

export interface AdminCommentStored extends JudoStored<AdminComment>, AdminComment {}
