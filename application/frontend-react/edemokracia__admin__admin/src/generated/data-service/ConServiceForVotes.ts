import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  Con,
  User,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Con.votes
 */
export interface ConServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<Con>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;
}
