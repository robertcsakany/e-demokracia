import { MaskBuilder } from './MaskBuilder';
import { SelectAnswerInputAttributes } from '../model';

export class SelectAnswerInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<SelectAnswerInputAttributes>) {
    super(props);
  }
}
