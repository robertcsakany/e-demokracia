import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CityAttributes, DistrictAttributes } from '../model';

import {} from './DistrictMaskBuilder';

export class CityDistrictsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<DistrictAttributes>) {
    super('districts', props);
  }
}

export class CityMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CityAttributes | CityDistrictsMaskBuilder>) {
    super(props);
  }
}
