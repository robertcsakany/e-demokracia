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
  AdminProQueryCustomizer,
  AdminProStored,
  AdminDebate,
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  AdminCommentStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for AdminDebate.cons
 */
export interface AdminDebateServiceForCons {
  listCons(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  deleteCons(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminCon>): Promise<void>;

  updateCons(owner: JudoIdentifiable<AdminDebate>, target: Partial<AdminConStored>): Promise<AdminConStored>;
}
