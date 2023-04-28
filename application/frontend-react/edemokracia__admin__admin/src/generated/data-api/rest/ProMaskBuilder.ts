import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CommentAttributes, ProAttributes, ConAttributes, SimpleVoteAttributes, UserAttributes } from '../model';

import { CommentVotesMaskBuilder } from './CommentMaskBuilder';
import {} from './SimpleVoteMaskBuilder';
import { ConCommentsMaskBuilder, ConProsMaskBuilder, ConConsMaskBuilder, ConVotesMaskBuilder } from './ConMaskBuilder';

export class ProCommentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<CommentAttributes | CommentVotesMaskBuilder>) {
    super('comments', props);
  }
}
export class ProConsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ConAttributes | ConCommentsMaskBuilder | ConProsMaskBuilder | ConConsMaskBuilder | ConVotesMaskBuilder
    >,
  ) {
    super('cons', props);
  }
}
export class ProProsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      ProAttributes | ProCommentsMaskBuilder | ProConsMaskBuilder | ProProsMaskBuilder | ProVotesMaskBuilder
    >,
  ) {
    super('pros', props);
  }
}
export class ProVotesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<SimpleVoteAttributes>) {
    super('votes', props);
  }
}

export class ProMaskBuilder extends MaskBuilder {
  constructor(
    protected props: Array<
      ProAttributes | ProCommentsMaskBuilder | ProConsMaskBuilder | ProProsMaskBuilder | ProVotesMaskBuilder
    >,
  ) {
    super(props);
  }
}
