import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  DebateQueryCustomizer,
  Issue,
  User,
  Con,
  VoteDefinitionQueryCustomizer,
  ProStored,
  Pro,
  VoteDefinitionStored,
  ConQueryCustomizer,
  UserQueryCustomizer,
  IssueQueryCustomizer,
  ProQueryCustomizer,
  IssueStored,
  CommentQueryCustomizer,
  Debate,
  ConStored,
  DebateStored,
  UserStored,
  VoteDefinition,
} from '../data-api';

/**
 * Relation Service for Issue.debates
 */
export interface IssueServiceForDebates {
  listDebates(owner: JudoIdentifiable<Issue>, queryCustomizer?: DebateQueryCustomizer): Promise<Array<DebateStored>>;
}
