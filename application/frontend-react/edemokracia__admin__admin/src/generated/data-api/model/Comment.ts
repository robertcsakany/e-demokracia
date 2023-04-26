import { JudoStored } from '@judo/data-api-common';
import { UserStored } from './User';
import { SimpleVoteStored } from './SimpleVote';

export interface Comment {
  comment: string;
  created: Date;

  votes?: null | Array<SimpleVoteStored>;
  createdBy?: null | UserStored;
}
export type CommentAttributes = 'comment' | 'created';

export type CommentRelations = 'votes' | 'createdBy';

export interface CommentStored extends JudoStored<Comment>, Comment {}
