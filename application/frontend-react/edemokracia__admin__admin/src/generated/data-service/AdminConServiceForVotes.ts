import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCon,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminCon.votes
 */
export interface AdminConServiceForVotes {
  listVotes(
    owner: JudoIdentifiable<AdminCon>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getRangeForUser(
    owner: JudoIdentifiable<AdminCon>,
    queryCustomizer: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  setUser(
    owner: JudoIdentifiable<AdminCon>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void>;

  unsetUser(owner: JudoIdentifiable<AdminCon>, target: JudoIdentifiable<AdminUser>): Promise<void>;
}
