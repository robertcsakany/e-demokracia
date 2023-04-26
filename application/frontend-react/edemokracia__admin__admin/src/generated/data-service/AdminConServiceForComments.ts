import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCon,
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
 * Relation Service for AdminCon.comments
 */
export interface AdminConServiceForComments {
  listComments(
    owner: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;
}
