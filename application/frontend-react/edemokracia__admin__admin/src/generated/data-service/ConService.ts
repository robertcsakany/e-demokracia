import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Comment,
  CommentStored,
  SimpleVote,
  Con,
  User,
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
 * Class Service for Con
 */
export interface ConService {
  refresh(target: JudoIdentifiable<Con>, queryCustomizer?: ConQueryCustomizer): Promise<ConStored>;

  getComments(target: JudoIdentifiable<Con>, queryCustomizer?: CommentQueryCustomizer): Promise<Array<CommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<Con> | Con,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>>;

  getCreatedBy(target: JudoIdentifiable<Con>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<Con> | Con,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;

  getPros(target: JudoIdentifiable<Con>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;

  getRangeForPros(owner?: JudoIdentifiable<Con> | Con, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>>;

  getCons(target: JudoIdentifiable<Con>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;

  getRangeForCons(owner?: JudoIdentifiable<Con> | Con, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>>;

  getVotes(
    target: JudoIdentifiable<Con>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<Con> | Con,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  createSubArgument(owner: JudoIdentifiable<Con>, target: CreateArgumentInput): Promise<void>;

  voteDown(owner: JudoIdentifiable<Con>): Promise<void>;

  voteUp(owner: JudoIdentifiable<Con>): Promise<void>;

  createComment(owner: JudoIdentifiable<Con>, target: CreateCommentInput): Promise<void>;
}
