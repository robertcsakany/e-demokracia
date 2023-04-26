import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { AdminDistrictAttributes, AdminCityAttributes } from '../model';

import {} from './AdminDistrictMaskBuilder';

export class AdminCityDistrictsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminDistrictAttributes>) {
    super('districts', props);
  }
}

export class AdminCityMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminCityAttributes | AdminCityDistrictsMaskBuilder>) {
    super(props);
  }
}
