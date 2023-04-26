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
  ConStored,
  UserStored,
  SimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for Pro.pros
 */
export interface ProServiceForPros {
  listPros(owner: JudoIdentifiable<Pro>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;
}
