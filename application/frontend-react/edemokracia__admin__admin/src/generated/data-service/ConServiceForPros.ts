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
 * Relation Service for Con.pros
 */
export interface ConServiceForPros {
  listPros(owner: JudoIdentifiable<Con>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;
}
