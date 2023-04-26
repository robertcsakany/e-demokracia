import { MaskBuilder } from './MaskBuilder';
import { IssueTypeAttributes } from '../model';

export class IssueTypeMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<IssueTypeAttributes>) {
    super(props);
  }
}
