import { MaskBuilder } from './MaskBuilder';
import { CreateDebateInputAttributes } from '../model';

export class CreateDebateInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CreateDebateInputAttributes>) {
    super(props);
  }
}
