import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  SimpleVote,
  User,
  Con,
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
 * Relation Service for Debate.pros
 */
export interface DebateServiceForPros {
  listPros(owner: JudoIdentifiable<Debate>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;
}
