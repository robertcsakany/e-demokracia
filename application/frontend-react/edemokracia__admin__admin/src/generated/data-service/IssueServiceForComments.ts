import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Comment,
  SimpleVote,
  Issue,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Issue.comments
 */
export interface IssueServiceForComments {
  listComments(owner: JudoIdentifiable<Issue>, queryCustomizer?: CommentQueryCustomizer): Promise<Array<CommentStored>>;
}
