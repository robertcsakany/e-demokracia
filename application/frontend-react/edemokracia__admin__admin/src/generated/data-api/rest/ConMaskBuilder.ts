import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CommentAttributes, ProAttributes, ConAttributes, SimpleVoteAttributes, UserAttributes } from '../model';

import { CommentVotesMaskBuilder } from './CommentMaskBuilder';
import { ProCommentsMaskBuilder, ProConsMaskBuilder, ProProsMaskBuilder, ProVotesMaskBuilder } from './ProMaskBuilder';
import {} from './SimpleVoteMaskBuilder';

export class ConCommentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<CommentAttributes | CommentVotesMaskBuilder>) {
    super('comments', props);
  }
}
export class ConProsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ProAttributes | ProCommentsMaskBuilder | ProConsMaskBuilder | ProProsMaskBuilder | ProVotesMaskBuilder
    >,
  ) {
    super('pros', props);
  }
}
export class ConConsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ConAttributes | ConCommentsMaskBuilder | ConProsMaskBuilder | ConConsMaskBuilder | ConVotesMaskBuilder
    >,
  ) {
    super('cons', props);
  }
}
export class ConVotesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<SimpleVoteAttributes>) {
    super('votes', props);
  }
}

export class ConMaskBuilder extends MaskBuilder {
  constructor(
    protected props: Array<
      ConAttributes | ConCommentsMaskBuilder | ConProsMaskBuilder | ConConsMaskBuilder | ConVotesMaskBuilder
    >,
  ) {
    super(props);
  }
}
