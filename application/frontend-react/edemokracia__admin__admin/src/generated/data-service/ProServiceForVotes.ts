import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  User,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  Pro,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Pro.votes
 */
export interface ProServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<Pro>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;
}
