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
  Debate,
  ConStored,
  UserStored,
  SimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for Debate.cons
 */
export interface DebateServiceForCons {
  listCons(owner: JudoIdentifiable<Debate>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;
}
