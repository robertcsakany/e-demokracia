import { JudoStored } from '@judo/data-api-common';
import { AdminProStored } from './AdminPro';
import { AdminUserStored } from './AdminUser';
import { AdminCommentStored } from './AdminComment';
import { AdminSimpleVoteStored } from './AdminSimpleVote';

export interface AdminCon {
  createdByName?: null | string;
  created: Date;
  description: string;
  title: string;
  upVotes?: null | number;
  downVotes?: null | number;

  votes?: null | Array<AdminSimpleVoteStored>;
  createdBy?: null | AdminUserStored;
  cons?: null | Array<AdminConStored>;
  pros?: null | Array<AdminProStored>;
  comments?: null | Array<AdminCommentStored>;
}
export type AdminConAttributes = 'createdByName' | 'created' | 'description' | 'title' | 'upVotes' | 'downVotes';

export type AdminConRelations = 'votes' | 'createdBy' | 'cons' | 'pros' | 'comments';

export interface AdminConStored extends JudoStored<AdminCon>, AdminCon {}
