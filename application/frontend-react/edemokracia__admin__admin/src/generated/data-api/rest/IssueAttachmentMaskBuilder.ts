import { MaskBuilder } from './MaskBuilder';
import { IssueAttachmentAttributes } from '../model';

export class IssueAttachmentMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<IssueAttachmentAttributes>) {
    super(props);
  }
}
