import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { AdminCountyAttributes, AdminCityAttributes } from '../model';

import { AdminCityDistrictsMaskBuilder } from './AdminCityMaskBuilder';

export class AdminCountyCitiesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCityAttributes | AdminCityDistrictsMaskBuilder>) {
    super('cities', props);
  }
}

export class AdminCountyMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminCountyAttributes | AdminCountyCitiesMaskBuilder>) {
    super(props);
  }
}
