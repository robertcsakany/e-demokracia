import { MaskBuilder } from './MaskBuilder';
import { VoteEntryAttributes, VoteDefinitionAttributes } from '../model';

export class VoteDefinitionMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<VoteDefinitionAttributes>) {
    super(props);
  }
}
