import { MaskBuilder } from './MaskBuilder';
import { AdminDistrictAttributes } from '../model';

export class AdminDistrictMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminDistrictAttributes>) {
    super(props);
  }
}
