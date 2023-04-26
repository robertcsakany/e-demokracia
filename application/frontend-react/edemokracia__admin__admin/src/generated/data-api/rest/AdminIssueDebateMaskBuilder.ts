import { MaskBuilder } from './MaskBuilder';
import { AdminIssueDebateAttributes } from '../model';

export class AdminIssueDebateMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminIssueDebateAttributes>) {
    super(props);
  }
}
