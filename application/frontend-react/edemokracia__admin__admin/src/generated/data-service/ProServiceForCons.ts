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
 * Relation Service for Pro.cons
 */
export interface ProServiceForCons {
  listCons(owner: JudoIdentifiable<Pro>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;
}
