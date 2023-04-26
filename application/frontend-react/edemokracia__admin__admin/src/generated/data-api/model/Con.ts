import { JudoStored } from '@judo/data-api-common';
import { CommentStored } from './Comment';
import { ProStored } from './Pro';
import { UserStored } from './User';
import { SimpleVoteStored } from './SimpleVote';

export interface Con {
  description: string;
  created: Date;
  title: string;

  comments?: null | Array<CommentStored>;
  createdBy?: null | UserStored;
  pros?: null | Array<ProStored>;
  cons?: null | Array<ConStored>;
  votes?: null | Array<SimpleVoteStored>;
}
export type ConAttributes = 'description' | 'created' | 'title';

export type ConRelations = 'comments' | 'createdBy' | 'pros' | 'cons' | 'votes';

export interface ConStored extends JudoStored<Con>, Con {}
