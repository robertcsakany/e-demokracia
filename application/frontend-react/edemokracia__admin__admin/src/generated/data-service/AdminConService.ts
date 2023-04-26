import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminPro,
  AdminSimpleVote,
  AdminCommentQueryCustomizer,
  AdminSimpleVoteQueryCustomizer,
  AdminProStored,
  AdminProQueryCustomizer,
  CreateCommentInput,
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  CreateArgumentInput,
  AdminCommentStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Class Service for AdminCon
 */
export interface AdminConService {
  refresh(target: JudoIdentifiable<AdminCon>, queryCustomizer?: AdminConQueryCustomizer): Promise<AdminConStored>;

  delete(target: JudoIdentifiable<AdminCon>): Promise<void>;

  update(target: Partial<AdminConStored>): Promise<AdminConStored>;

  getVotes(
    target: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<AdminCon> | AdminCon,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getCreatedBy(
    target: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<AdminUserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<AdminCon> | AdminCon,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  getCons(
    target: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getRangeForCons(
    owner?: JudoIdentifiable<AdminCon> | AdminCon,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getPros(
    target: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getRangeForPros(
    owner?: JudoIdentifiable<AdminCon> | AdminCon,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getComments(
    target: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<AdminCon> | AdminCon,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  createSubArgument(owner: JudoIdentifiable<AdminCon>, target: CreateArgumentInput): Promise<void>;

  voteUp(owner: JudoIdentifiable<AdminCon>): Promise<void>;

  voteDown(owner: JudoIdentifiable<AdminCon>): Promise<void>;

  createComment(owner: JudoIdentifiable<AdminCon>, target: CreateCommentInput): Promise<void>;
}
