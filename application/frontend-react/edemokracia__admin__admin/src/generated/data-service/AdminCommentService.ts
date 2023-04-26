import { JudoIdentifiable } from '@judo/data-api-common';
import {
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
 * Class Service for AdminComment
 */
export interface AdminCommentService {
  refresh(
    target: JudoIdentifiable<AdminComment>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<AdminCommentStored>;

  delete(target: JudoIdentifiable<AdminComment>): Promise<void>;

  update(target: Partial<AdminCommentStored>): Promise<AdminCommentStored>;

  getVotes(
    target: JudoIdentifiable<AdminComment>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<AdminComment> | AdminComment,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getCreatedBy(
    target: JudoIdentifiable<AdminComment>,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<AdminUserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<AdminComment> | AdminComment,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  voteUp(owner: JudoIdentifiable<AdminComment>): Promise<void>;

  voteDown(owner: JudoIdentifiable<AdminComment>): Promise<void>;
}
