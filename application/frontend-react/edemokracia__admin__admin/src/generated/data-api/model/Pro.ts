import { JudoStored } from '@judo/data-api-common';
import { CommentStored } from './Comment';
import { ConStored } from './Con';
import { UserStored } from './User';
import { SimpleVoteStored } from './SimpleVote';

export interface Pro {
  description: string;
  created: Date;
  title: string;

  comments?: null | Array<CommentStored>;
  createdBy?: null | UserStored;
  cons?: null | Array<ConStored>;
  pros?: null | Array<ProStored>;
  votes?: null | Array<SimpleVoteStored>;
}
export type ProAttributes = 'description' | 'created' | 'title';

export type ProRelations = 'comments' | 'createdBy' | 'cons' | 'pros' | 'votes';

export interface ProStored extends JudoStored<Pro>, Pro {}
