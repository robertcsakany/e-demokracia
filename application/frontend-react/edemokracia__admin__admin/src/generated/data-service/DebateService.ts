import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Comment,
  CommentStored,
  DebateQueryCustomizer,
  Issue,
  User,
  Con,
  VoteDefinitionQueryCustomizer,
  ProStored,
  Pro,
  VoteDefinitionStored,
  ConQueryCustomizer,
  UserQueryCustomizer,
  IssueQueryCustomizer,
  ProQueryCustomizer,
  CreateCommentInput,
  IssueStored,
  CommentQueryCustomizer,
  Debate,
  ConStored,
  DebateStored,
  UserStored,
  CreateArgumentInput,
  VoteDefinition,
  CloseDebateInput,
} from '../data-api';

/**
 * Class Service for Debate
 */
export interface DebateService {
  refresh(target: JudoIdentifiable<Debate>, queryCustomizer?: DebateQueryCustomizer): Promise<DebateStored>;

  getIssue(target: JudoIdentifiable<Debate>, queryCustomizer?: IssueQueryCustomizer): Promise<IssueStored>;

  getRangeForIssue(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: IssueQueryCustomizer,
  ): Promise<Array<IssueStored>>;

  getCreatedBy(target: JudoIdentifiable<Debate>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;

  getDebateVote(
    target: JudoIdentifiable<Debate>,
    queryCustomizer?: VoteDefinitionQueryCustomizer,
  ): Promise<VoteDefinitionStored>;

  getRangeForDebateVote(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: VoteDefinitionQueryCustomizer,
  ): Promise<Array<VoteDefinitionStored>>;

  getComments(
    target: JudoIdentifiable<Debate>,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>>;

  getCons(target: JudoIdentifiable<Debate>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;

  getRangeForCons(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: ConQueryCustomizer,
  ): Promise<Array<ConStored>>;

  getPros(target: JudoIdentifiable<Debate>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;

  getRangeForPros(
    owner?: JudoIdentifiable<Debate> | Debate,
    queryCustomizer?: ProQueryCustomizer,
  ): Promise<Array<ProStored>>;

  closeDebate(owner: JudoIdentifiable<Debate>, target: CloseDebateInput): Promise<VoteDefinitionStored>;

  createArgument(owner: JudoIdentifiable<Debate>, target: CreateArgumentInput): Promise<void>;

  createComment(owner: JudoIdentifiable<Debate>, target: CreateCommentInput): Promise<void>;
}
