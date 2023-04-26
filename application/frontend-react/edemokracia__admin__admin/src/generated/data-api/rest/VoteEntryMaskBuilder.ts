import { MaskBuilder } from './MaskBuilder';
import { VoteDefinitionAttributes, VoteEntryAttributes, UserAttributes } from '../model';

export class VoteEntryMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<VoteEntryAttributes>) {
    super(props);
  }
}
