import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCon,
  AdminIssueStored,
  AdminCommentQueryCustomizer,
  VoteDefinitionStored,
  AdminIssueQueryCustomizer,
  AdminProQueryCustomizer,
  CreateCommentInput,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  CreateArgumentInput,
  CloseDebateInput,
  AdminDebateQueryCustomizer,
  AdminVoteDefinitionQueryCustomizer,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminPro,
  AdminVoteDefinitionStored,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminCommentStored,
} from '../data-api';

/**
 * Class Service for AdminDebate
 */
export interface AdminDebateService {
  refresh(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<AdminDebateStored>;

  delete(target: JudoIdentifiable<AdminDebate>): Promise<void>;

  update(target: Partial<AdminDebateStored>): Promise<AdminDebateStored>;

  getIssue(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<AdminIssueStored>;

  getRangeForIssue(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>>;

  getComments(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getCreatedBy(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<AdminUserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  getCons(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getRangeForCons(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>>;

  getPros(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getRangeForPros(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>>;

  getVoteDefinition(
    target: JudoIdentifiable<AdminDebate>,
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<AdminVoteDefinitionStored>;

  getRangeForVoteDefinition(
    owner?: JudoIdentifiable<AdminDebate> | AdminDebate,
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<Array<AdminVoteDefinitionStored>>;

  closeDebate(owner: JudoIdentifiable<AdminDebate>, target: CloseDebateInput): Promise<VoteDefinitionStored>;

  createArgument(owner: JudoIdentifiable<AdminDebate>, target: CreateArgumentInput): Promise<void>;

  createComment(owner: JudoIdentifiable<AdminDebate>, target: CreateCommentInput): Promise<void>;
}
