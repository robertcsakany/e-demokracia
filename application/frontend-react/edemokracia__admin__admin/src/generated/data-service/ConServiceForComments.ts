import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  SimpleVote,
  Con,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Con.comments
 */
export interface ConServiceForComments {
  listComments(owner: JudoIdentifiable<Con>, queryCustomizer?: CommentQueryCustomizer): Promise<Array<CommentStored>>;
}
