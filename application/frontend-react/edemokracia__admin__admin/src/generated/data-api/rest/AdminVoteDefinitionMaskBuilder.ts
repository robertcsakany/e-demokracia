import { MaskBuilder } from './MaskBuilder';
import { AdminIssueAttributes, AdminDebateAttributes, AdminVoteDefinitionAttributes } from '../model';

export class AdminVoteDefinitionMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminVoteDefinitionAttributes>) {
    super(props);
  }
}
