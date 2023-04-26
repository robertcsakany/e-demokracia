import { JudoStored } from '@judo/data-api-common';
import { AdminConStored } from './AdminCon';
import { AdminUserStored } from './AdminUser';
import { AdminCommentStored } from './AdminComment';
import { AdminSimpleVoteStored } from './AdminSimpleVote';

export interface AdminPro {
  createdByName?: null | string;
  created: Date;
  description: string;
  title: string;
  upVotes?: null | number;
  downVotes?: null | number;

  votes?: null | Array<AdminSimpleVoteStored>;
  createdBy?: null | AdminUserStored;
  pros?: null | Array<AdminProStored>;
  cons?: null | Array<AdminConStored>;
  comments?: null | Array<AdminCommentStored>;
}
export type AdminProAttributes = 'createdByName' | 'created' | 'description' | 'title' | 'upVotes' | 'downVotes';

export type AdminProRelations = 'votes' | 'createdBy' | 'pros' | 'cons' | 'comments';

export interface AdminProStored extends JudoStored<AdminPro>, AdminPro {}
