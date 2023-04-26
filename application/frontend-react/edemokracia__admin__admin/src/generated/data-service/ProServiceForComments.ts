import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  SimpleVote,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  Pro,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Pro.comments
 */
export interface ProServiceForComments {
  listComments(owner: JudoIdentifiable<Pro>, queryCustomizer?: CommentQueryCustomizer): Promise<Array<CommentStored>>;
}
