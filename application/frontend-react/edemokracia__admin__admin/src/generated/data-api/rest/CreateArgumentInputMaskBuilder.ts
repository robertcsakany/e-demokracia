import { MaskBuilder } from './MaskBuilder';
import { CreateArgumentInputAttributes } from '../model';

export class CreateArgumentInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CreateArgumentInputAttributes>) {
    super(props);
  }
}
