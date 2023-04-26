import { MaskBuilder } from './MaskBuilder';
import { CloseDebateInputAttributes } from '../model';

export class CloseDebateInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CloseDebateInputAttributes>) {
    super(props);
  }
}
