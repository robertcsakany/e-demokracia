import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  SimpleVote,
  Con,
  User,
  ProStored,
  Pro,
  SimpleVoteQueryCustomizer,
  ConQueryCustomizer,
  UserQueryCustomizer,
  ProQueryCustomizer,
  CommentQueryCustomizer,
  ConStored,
  UserStored,
  SimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for Con.cons
 */
export interface ConServiceForCons {
  listCons(owner: JudoIdentifiable<Con>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;
}
