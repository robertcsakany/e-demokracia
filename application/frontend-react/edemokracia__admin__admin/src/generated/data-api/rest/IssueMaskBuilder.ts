import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import {
  CommentAttributes,
  CountyAttributes,
  CityAttributes,
  IssueTypeAttributes,
  DistrictAttributes,
  IssueAttributes,
  DebateAttributes,
  IssueAttachmentAttributes,
  UserAttributes,
  IssueCategoryAttributes,
} from '../model';

import { CommentVotesMaskBuilder } from './CommentMaskBuilder';
import {} from './IssueAttachmentMaskBuilder';

export class IssueAttachmentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<IssueAttachmentAttributes>) {
    super('attachments', props);
  }
}
export class IssueCommentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<CommentAttributes | CommentVotesMaskBuilder>) {
    super('comments', props);
  }
}

export class IssueMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<IssueAttributes | IssueAttachmentsMaskBuilder | IssueCommentsMaskBuilder>) {
    super(props);
  }
}
