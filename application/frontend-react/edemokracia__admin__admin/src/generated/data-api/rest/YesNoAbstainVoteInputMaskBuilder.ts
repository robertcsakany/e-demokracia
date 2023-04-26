import { MaskBuilder } from './MaskBuilder';
import { YesNoAbstainVoteInputAttributes } from '../model';

export class YesNoAbstainVoteInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<YesNoAbstainVoteInputAttributes>) {
    super(props);
  }
}
