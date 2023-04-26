import { MaskBuilder } from './MaskBuilder';
import { SelectAnswerVoteSelectionAttributes } from '../model';

export class SelectAnswerVoteSelectionMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<SelectAnswerVoteSelectionAttributes>) {
    super(props);
  }
}
