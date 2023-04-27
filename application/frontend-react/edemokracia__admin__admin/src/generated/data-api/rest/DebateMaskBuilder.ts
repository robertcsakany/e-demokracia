import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import {
  CommentAttributes,
  ProAttributes,
  IssueAttributes,
  VoteDefinitionAttributes,
  ConAttributes,
  DebateAttributes,
  UserAttributes,
} from '../model';

import { ProCommentsMaskBuilder, ProConsMaskBuilder, ProProsMaskBuilder, ProVotesMaskBuilder } from './ProMaskBuilder';
import {} from './VoteDefinitionMaskBuilder';
import { ConCommentsMaskBuilder, ConProsMaskBuilder, ConConsMaskBuilder, ConVotesMaskBuilder } from './ConMaskBuilder';
import { CommentVotesMaskBuilder } from './CommentMaskBuilder';

export class DebateDebateVoteMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<VoteDefinitionAttributes>) {
    super('debateVote', props);
  }
}
export class DebateCommentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<CommentAttributes | CommentVotesMaskBuilder>) {
    super('comments', props);
  }
}
export class DebateConsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ConAttributes | ConCommentsMaskBuilder | ConProsMaskBuilder | ConConsMaskBuilder | ConVotesMaskBuilder
    >,
  ) {
    super('cons', props);
  }
}
export class DebateProsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ProAttributes | ProCommentsMaskBuilder | ProConsMaskBuilder | ProProsMaskBuilder | ProVotesMaskBuilder
    >,
  ) {
    super('pros', props);
  }
}

export class DebateMaskBuilder extends MaskBuilder {
  constructor(
    protected props: Array<
      | DebateAttributes
      | DebateDebateVoteMaskBuilder
      | DebateCommentsMaskBuilder
      | DebateConsMaskBuilder
      | DebateProsMaskBuilder
    >,
  ) {
    super(props);
  }
}
