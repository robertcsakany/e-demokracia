import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Comment,
  SimpleVote,
  User,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Comment.votes
 */
export interface CommentServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<Comment>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;
}
