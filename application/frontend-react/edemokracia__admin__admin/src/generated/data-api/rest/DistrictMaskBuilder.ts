import { MaskBuilder } from './MaskBuilder';
import { DistrictAttributes } from '../model';

export class DistrictMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<DistrictAttributes>) {
    super(props);
  }
}
