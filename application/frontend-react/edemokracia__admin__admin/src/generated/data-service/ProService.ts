import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Comment,
  CommentStored,
  SimpleVote,
  User,
  Con,
  ProStored,
  Pro,
  SimpleVoteQueryCustomizer,
  ConQueryCustomizer,
  UserQueryCustomizer,
  ProQueryCustomizer,
  CreateCommentInput,
  CommentQueryCustomizer,
  ConStored,
  UserStored,
  SimpleVoteStored,
  CreateArgumentInput,
} from '../data-api';

/**
 * Class Service for Pro
 */
export interface ProService {
  refresh(target: JudoIdentifiable<Pro>, queryCustomizer?: ProQueryCustomizer): Promise<ProStored>;

  getComments(target: JudoIdentifiable<Pro>, queryCustomizer?: CommentQueryCustomizer): Promise<Array<CommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>>;

  getCreatedBy(target: JudoIdentifiable<Pro>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;

  getCons(target: JudoIdentifiable<Pro>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;

  getRangeForCons(owner?: JudoIdentifiable<Pro> | Pro, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;

  getPros(target: JudoIdentifiable<Pro>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;

  getRangeForPros(owner?: JudoIdentifiable<Pro> | Pro, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;

  getVotes(
    target: JudoIdentifiable<Pro>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  createSubArgument(owner: JudoIdentifiable<Pro>, target: CreateArgumentInput): Promise<void>;

  voteDown(owner: JudoIdentifiable<Pro>): Promise<void>;

  voteUp(owner: JudoIdentifiable<Pro>): Promise<void>;

  createComment(owner: JudoIdentifiable<Pro>, target: CreateCommentInput): Promise<void>;
}
