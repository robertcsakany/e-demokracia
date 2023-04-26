import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminPro.votes
 */
export interface AdminProServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  createVotes(owner: JudoIdentifiable<AdminPro>, target: AdminSimpleVote): Promise<AdminSimpleVoteStored>;

  deleteVotes(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminSimpleVote>): Promise<void>;

  updateVotes(
    owner: JudoIdentifiable<AdminPro>,
    target: Partial<AdminSimpleVoteStored>,
  ): Promise<AdminSimpleVoteStored>;

  getRangeForUser(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  setUser(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void>;

  unsetUser(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminUser>): Promise<void>;
}
