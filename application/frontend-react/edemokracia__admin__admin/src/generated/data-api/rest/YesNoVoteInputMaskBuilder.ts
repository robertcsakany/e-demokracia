import { MaskBuilder } from './MaskBuilder';
import { YesNoVoteInputAttributes } from '../model';

export class YesNoVoteInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<YesNoVoteInputAttributes>) {
    super(props);
  }
}
