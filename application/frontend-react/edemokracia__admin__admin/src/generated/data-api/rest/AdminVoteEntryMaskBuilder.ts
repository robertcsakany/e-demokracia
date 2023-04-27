import { MaskBuilder } from './MaskBuilder';
import { AdminVoteEntryAttributes, AdminVoteDefinitionAttributes } from '../model';

export class AdminVoteEntryMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminVoteEntryAttributes>) {
    super(props);
  }
}
