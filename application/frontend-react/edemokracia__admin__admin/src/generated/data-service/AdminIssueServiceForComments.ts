import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssue,
  AdminComment,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminUser,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminIssue.comments
 */
export interface AdminIssueServiceForComments {
  listComments(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;
}
