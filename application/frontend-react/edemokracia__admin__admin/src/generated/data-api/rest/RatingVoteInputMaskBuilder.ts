import { MaskBuilder } from './MaskBuilder';
import { RatingVoteInputAttributes } from '../model';

export class RatingVoteInputMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<RatingVoteInputAttributes>) {
    super(props);
  }
}
