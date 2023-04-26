import { MaskBuilder } from './MaskBuilder';
import { AdminDebateAttributes, AdminVoteDefinitionAttributes } from '../model';

export class AdminVoteDefinitionMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminVoteDefinitionAttributes>) {
    super(props);
  }
}
