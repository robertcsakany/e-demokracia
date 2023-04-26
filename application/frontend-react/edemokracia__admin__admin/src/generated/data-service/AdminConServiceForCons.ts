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
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  AdminCommentStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for AdminCon.cons
 */
export interface AdminConServiceForCons {
  listCons(
    owner: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  deleteCons(owner: JudoIdentifiable<AdminCon>, target: JudoIdentifiable<AdminCon>): Promise<void>;

  updateCons(owner: JudoIdentifiable<AdminCon>, target: Partial<AdminConStored>): Promise<AdminConStored>;
}
