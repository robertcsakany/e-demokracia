import { MaskBuilder } from './MaskBuilder';
import { AdminCreateUserInputAttributes } from '../model';

export class AdminCreateUserInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminCreateUserInputAttributes>) {
    super(props);
  }
}
