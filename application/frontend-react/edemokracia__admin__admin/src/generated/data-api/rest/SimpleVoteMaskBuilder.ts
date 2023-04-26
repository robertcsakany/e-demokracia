import { MaskBuilder } from './MaskBuilder';
import { SimpleVoteAttributes, UserAttributes } from '../model';

export class SimpleVoteMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<SimpleVoteAttributes>) {
    super(props);
  }
}
