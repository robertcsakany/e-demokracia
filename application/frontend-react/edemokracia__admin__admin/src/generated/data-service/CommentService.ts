import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Comment,
  CommentStored,
  SimpleVote,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';

/**
 * Class Service for Comment
 */
export interface CommentService {
  refresh(target: JudoIdentifiable<Comment>, queryCustomizer?: CommentQueryCustomizer): Promise<CommentStored>;

  getVotes(
    target: JudoIdentifiable<Comment>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<Comment> | Comment,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getCreatedBy(target: JudoIdentifiable<Comment>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<Comment> | Comment,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;

  voteUp(owner: JudoIdentifiable<Comment>): Promise<void>;

  voteDown(owner: JudoIdentifiable<Comment>): Promise<void>;
}
