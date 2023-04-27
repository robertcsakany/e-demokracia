import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CloseDebateInputAttributes, SelectAnswerInputAttributes } from '../model';

import {} from './SelectAnswerInputMaskBuilder';

export class CloseDebateInputAnswersMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<SelectAnswerInputAttributes>) {
    super('answers', props);
  }
}

export class CloseDebateInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CloseDebateInputAttributes | CloseDebateInputAnswersMaskBuilder>) {
    super(props);
  }
}
