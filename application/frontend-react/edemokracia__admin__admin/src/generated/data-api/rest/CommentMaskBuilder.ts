import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CommentAttributes, SimpleVoteAttributes, UserAttributes } from '../model';

import {} from './SimpleVoteMaskBuilder';

export class CommentVotesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<SimpleVoteAttributes>) {
    super('votes', props);
  }
}

export class CommentMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CommentAttributes | CommentVotesMaskBuilder>) {
    super(props);
  }
}
