import { MaskBuilder } from './MaskBuilder';
import { AdminIssueTypeAttributes } from '../model';

export class AdminIssueTypeMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminIssueTypeAttributes>) {
    super(props);
  }
}
