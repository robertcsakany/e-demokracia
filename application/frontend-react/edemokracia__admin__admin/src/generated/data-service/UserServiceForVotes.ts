import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  User,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for User.votes
 */
export interface UserServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<User>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;
}
