import { MaskBuilder } from './MaskBuilder';
import { CreateCommentInputAttributes } from '../model';

export class CreateCommentInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CreateCommentInputAttributes>) {
    super(props);
  }
}
