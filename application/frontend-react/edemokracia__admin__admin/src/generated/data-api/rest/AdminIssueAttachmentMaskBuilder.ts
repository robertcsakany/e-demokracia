import { MaskBuilder } from './MaskBuilder';
import { AdminIssueAttachmentAttributes } from '../model';

export class AdminIssueAttachmentMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminIssueAttachmentAttributes>) {
    super(props);
  }
}
