import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
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
 * Class Service for AdminPro
 */
export interface AdminProService {
  refresh(target: JudoIdentifiable<AdminPro>, queryCustomizer?: AdminProQueryCustomizer): Promise<AdminProStored>;

  delete(target: JudoIdentifiable<AdminPro>): Promise<void>;

  update(target: Partial<AdminProStored>): Promise<AdminProStored>;

  getVotes(
    target: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<AdminPro> | AdminPro,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getCreatedBy(
    target: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<AdminUserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<AdminPro> | AdminPro,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  getPros(
    target: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getRangeForPros(
    owner?: JudoIdentifiable<AdminPro> | AdminPro,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getCons(
    target: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getRangeForCons(
    owner?: JudoIdentifiable<AdminPro> | AdminPro,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getComments(
    target: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<AdminPro> | AdminPro,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  createSubArgument(owner: JudoIdentifiable<AdminPro>, target: CreateArgumentInput): Promise<void>;

  voteUp(owner: JudoIdentifiable<AdminPro>): Promise<void>;

  voteDown(owner: JudoIdentifiable<AdminPro>): Promise<void>;

  createComment(owner: JudoIdentifiable<AdminPro>, target: CreateCommentInput): Promise<void>;
}
